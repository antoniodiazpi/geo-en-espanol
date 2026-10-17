# Checklist GEO: visibilidad en respuestas de IA

Ordenada por impacto. Cada punto se puede comprobar sin programar.

## 1. Acceso: que los bots de IA puedan leerte

- [ ] Tu robots.txt no bloquea a los bots de búsqueda con IA: OAI-SearchBot y ChatGPT-User (OpenAI), PerplexityBot, ClaudeBot (Anthropic). Búscalos en tudominio.com/robots.txt.
- [ ] Tu hosting o firewall no los bloquea tampoco (algunos hostings bloquean bots "desconocidos" sin avisar). Pídele a tu hosting la lista de bots bloqueados.
- [ ] Decides de forma consciente qué pasa con los bots de entrenamiento (GPTBot, Google-Extended, CCBot, Bytespider, Amazonbot, Meta-ExternalAgent, Applebot-Extended). No decidir nada es permitirlo todo: si no aparecen en tu robots.txt, entran.
- [ ] Si quieres declarar tu postura de forma explícita, añade el bloque Content-Signal al robots.txt (ver plantilla).
- [ ] Tu sitemap está declarado en el robots.txt y al día.

## 2. Contenido citable

- [ ] Las páginas clave responden su pregunta principal en el primer párrafo, sin rodeos.
- [ ] Aportas datos propios que no están en otra parte (cifras, precios, estudios, comparativas). Es lo que más se cita.
- [ ] Fechas visibles de publicación y actualización.
- [ ] Estructura clara: un H1, H2 por sección, listas donde ayudan.
- [ ] Sin páginas huérfanas: cada página importante recibe enlaces internos.

## 3. Estructura técnica

- [ ] Datos estructurados JSON-LD en la home (Organization o Person, según el caso) y en los contenidos (Article, FAQPage si hay preguntas frecuentes).
- [ ] Carga razonablemente rápida en móvil.
- [ ] HTTPS en todo el sitio.

## 4. llms.txt (opcional, con expectativas claras)

- [ ] Publicas /llms.txt siguiendo la especificación (ver plantilla).
- [ ] Es corto y enlaza a lo importante. Un llms.txt de 1 MB no se lo lee nadie, humano ni máquina.
- [ ] Sabes que hoy casi ningún bot de IA lo pide (97% de los llms.txt publicados no reciben ni una visita, según Ahrefs 2026). Lo pones porque cuesta diez minutos, no porque espere milagros.
- [ ] Si pides /llms.txt y tu servidor devuelve una página de error con estado 200 (soft 404), arréglalo: eso es peor que no tenerlo.

## 5. Identidad y autoridad

- [ ] El nombre de tu marca o proyecto se escribe igual en todas partes (web, perfiles, directorios).
- [ ] Tus perfiles públicos (LinkedIn, GitHub, WordPress.org, directorios de tu sector) existen, están completos y enlazan a tu web.
- [ ] Buscas menciones en medios y webs de tu sector: las IA citan a quien citan otros.
- [ ] Para negocios locales: mismos nombre, dirección y teléfono en todos los sitios.

## 6. Medición

- [ ] Tienes una lista fija de 5-10 prompts y los lanzas cada semana en ChatGPT, Perplexity y Gemini (ver prompts/medicion-citas-ia.md).
- [ ] Registras los resultados en una hoja: si no mides, no sabes si algo funciona.
- [ ] En Search Console, vigilas las consultas que ya te traen tráfico de AI Overviews.
