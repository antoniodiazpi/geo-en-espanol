#!/usr/bin/env bash
# Auditoría GEO rápida: robots.txt, llms.txt y datos estructurados en la home.
# Es la metodología de datos/auditoria-17-dominios.md, automatizada.
#
# Uso:
#   ./scripts/auditoria-geo.sh tudominio.com otrodominio.es
#
# Imprime una tabla Markdown que puedes pegar en un documento o en una issue.
# Necesita bash y curl (vienen en macOS y Linux; en Windows, usa WSL o Git Bash).
#
# Qué NO mide: si un firewall o un CDN bloquean a los bots, ni lo que se
# carga con JavaScript, ni si las IA te citan (para eso, prompts/).

set -u

if [ "$#" -eq 0 ]; then
  echo "Uso: $0 dominio1.com [dominio2.com ...]" >&2
  exit 1
fi

ua='Mozilla/5.0 (compatible; auditoria-geo/1.0; +https://github.com/antoniodiazpi/geo-en-espanol)'
bots_ia='gptbot oai-searchbot chatgpt-user claudebot claude-searchbot claude-user perplexitybot perplexity-user google-extended ccbot bytespider amazonbot meta-externalagent applebot-extended'

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

# Descarga una URL en $tmp/cuerpo y escribe "código tipo-de-contenido".
descargar() {
  curl -sL -A "$ua" --max-time 20 -o "$tmp/cuerpo" -w '%{http_code} %{content_type}' "$1" 2>/dev/null
}

# ¿Parece HTML? (soft 404 o página de error en lugar de un archivo de texto)
es_html() {
  case "$1" in *text/html*) return 0 ;; esac
  head -c 512 "$tmp/cuerpo" | tr -d ' \t\r\n' | grep -qi '^<'
}

# Lista los bots de IA bloqueados por completo (Disallow: / sin Allow: /).
# Sigue la lógica de RFC 9309: varias líneas User-agent seguidas comparten
# reglas, y un bot con grupo propio ignora el grupo "*".
bots_bloqueados() {
  awk -v bots="$bots_ia" '
    function cerrar_grupo(   i) {
      for (i = 1; i <= na; i++) {
        con_grupo[agentes[i]] = 1
        if (dis_raiz && !allow_raiz) bloqueado[agentes[i]] = 1
      }
      na = 0; en_reglas = 0; dis_raiz = 0; allow_raiz = 0
    }
    BEGIN { n = split(bots, lista, " ") }
    {
      linea = $0
      sub(/#.*/, "", linea)
      gsub(/\r/, "", linea)
      p = index(linea, ":")
      if (p == 0) next
      campo = tolower(substr(linea, 1, p - 1)); gsub(/[ \t]/, "", campo)
      valor = substr(linea, p + 1); gsub(/^[ \t]+|[ \t]+$/, "", valor)
      if (campo == "user-agent") {
        if (en_reglas) cerrar_grupo()
        agentes[++na] = tolower(valor)
      } else if (campo == "allow" || campo == "disallow") {
        en_reglas = 1
        if (valor == "/") { if (campo == "disallow") dis_raiz = 1; else allow_raiz = 1 }
      }
    }
    END {
      cerrar_grupo()
      salida = ""; total = 0
      for (i = 1; i <= n; i++) {
        b = (lista[i] in con_grupo) ? (lista[i] in bloqueado) : ("*" in bloqueado)
        if (b) { salida = salida (salida == "" ? "" : ", ") lista[i]; total++ }
      }
      if (total == n) print "Todos"
      else print (salida == "" ? "No" : salida)
    }
  ' "$tmp/robots"
}

echo '| Dominio | llms.txt | Bots de IA bloqueados | Content-Signal | Schema en home | Sitemap en robots |'
echo '|---|---|---|---|---|---|'

for dominio in "$@"; do
  case "$dominio" in
    *://*) base="$dominio" ;;
    *) base="https://$dominio" ;;
  esac
  base="${base%/}"

  # robots.txt
  read -r codigo tipo <<EOF
$(descargar "$base/robots.txt")
EOF
  if [ "$codigo" = "200" ] && es_html "$tipo"; then
    bloqueados="No (robots.txt devuelve HTML)"; signal="No"; sitemap="No"
  elif [ "$codigo" = "200" ]; then
    cp "$tmp/cuerpo" "$tmp/robots"
    if [ -s "$tmp/robots" ] && grep -q '[^[:space:]]' "$tmp/robots"; then
      bloqueados=$(bots_bloqueados)
      signal=$(grep -i '^[[:space:]]*content-signal[[:space:]]*:' "$tmp/robots" | head -1 | cut -d: -f2- | sed 's/^[[:space:]]*//; s/[[:space:]]*$//')
      [ -z "$signal" ] && signal="No"
      if grep -qi '^[[:space:]]*sitemap[[:space:]]*:' "$tmp/robots"; then sitemap="Sí"; else sitemap="No"; fi
    else
      bloqueados="No (robots.txt vacío)"; signal="No"; sitemap="No"
    fi
  elif [ "$codigo" = "000" ]; then
    bloqueados="Sin respuesta"; signal="-"; sitemap="-"
  else
    bloqueados="No hay robots.txt (HTTP $codigo)"; signal="No"; sitemap="No"
  fi

  # llms.txt
  read -r codigo tipo <<EOF
$(descargar "$base/llms.txt")
EOF
  if [ "$codigo" = "200" ]; then
    if es_html "$tipo"; then
      llms="No (soft 404)"
    else
      bytes=$(wc -c < "$tmp/cuerpo" | tr -d ' ')
      llms="Sí ($(( (bytes + 1023) / 1024 )) KB)"
    fi
  elif [ "$codigo" = "000" ]; then
    llms="Sin respuesta"
  else
    llms="No (HTTP $codigo)"
  fi

  # Datos estructurados en el HTML inicial de la home
  read -r codigo tipo <<EOF
$(descargar "$base/")
EOF
  if [ "$codigo" = "000" ]; then
    schema="Sin respuesta"
  elif [ "$codigo" != "200" ]; then
    schema="HTTP $codigo"
  else
    bloques=$(grep -o 'application/ld+json' "$tmp/cuerpo" | wc -l | tr -d ' ')
    if [ "$bloques" -gt 0 ]; then schema="Sí ($bloques bloques JSON-LD)"; else schema="No detectado"; fi
  fi

  echo "| $dominio | $llms | $bloqueados | $signal | $schema | $sitemap |"
done
