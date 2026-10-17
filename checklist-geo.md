# Checklist GEO: visibilidad en respuestas de IA

Ordenada por impacto. Cada punto se puede comprobar sin programar.

## 1. Acceso: que los bots de IA puedan leerte

- [ ] Tu robots.txt no bloquea a los bots de búsqueda con IA: OAI-SearchBot y ChatGPT-User (OpenAI), Claude-SearchBot y Claude-User (Anthropic), PerplexityBot y Perplexity-User (Perplexity). Búscalos en tudominio.com/robots.txt.
- [ ] Sabes que las AI Overviews y el AI Mode de Google usan Googlebot, y Copilot usa Bingbot: si bloqueas a esos dos, desapareces también del buscador clásico.
- [ ] Tu hosting o firewall no los bloquea tampoco (algunos hostings bloquean bots "desconocidos" sin avisar). Pídele a tu hosting la lista de bots bloqueados.
- [ ] Decides de forma consciente qué pasa con los bots de entrenamiento (GPTBot, ClaudeBot, Google-Extended, CCBot, Bytespider, Amazonbot, Meta-ExternalAgent, Applebot-Extended). No decidir nada es permitirlo todo: si no aparecen en tu robots.txt, entran.
- [ ] Si bloqueas Google-Extended, sabes que no te saca de las AI Overviews, pero sí puede restarte citas en la app de Gemini: según Google, ese token cubre el entrenamiento y también el *grounding* de Gemini.
- [ ] Decides si quieres salir en las AI Overviews y el AI Mode. Desde agosto de 2026, Search Console tiene en su configuración un control de IA generativa de la Búsqueda (por defecto, incluido). Excluirte no afecta a tu posición en los resultados clásicos, pero dejas de recibir impresiones y tráfico de esas funciones. Ese control no cubre el entrenamiento: para eso está Google-Extended.
- [ ] Si quieres declarar tu postura de forma explícita, añade la línea Content-Signal al robots.txt (ver [plantilla](plantillas/robots.txt)). Es una propuesta de Cloudflare, no un estándar: no todos los bots la respetan.
- [ ] Tu sitemap está declarado en el robots.txt y al día.

## 2. Contenido citable

- [ ] Las páginas clave responden su pregunta principal en el primer párrafo, sin rodeos.
- [ ] Aportas datos propios que no están en otra parte (cifras, precios, estudios, comparativas). Es lo que más se cita.
- [ ] Fechas visibles de publicación y actualización.
- [ ] Estructura clara: un H1, H2 por sección, listas donde ayudan.
- [ ] Sin páginas huérfanas: cada página importante recibe enlaces internos.

## 3. Estructura técnica

- [ ] El texto principal está en el HTML que sirve el servidor, no se carga después con JavaScript. Los bots de IA (GPTBot, ClaudeBot, PerplexityBot, OAI-SearchBot) no ejecutan JavaScript (Vercel, 2024). Compruébalo sin programar: abre la página, pulsa Ctrl+U (ver código fuente) y busca una frase de tu texto. Si no está, la IA tampoco la ve.
- [ ] Datos estructurados JSON-LD en la home (Organization o Person, según el caso) y en los contenidos (Article), coherentes con el texto visible. Ayudan a que las máquinas entiendan quién eres, pero no son una palanca mágica: Google dice que no hace falta ningún marcado especial para salir en AI Overviews o AI Mode, y desde mayo de 2026 ya no muestra resultados enriquecidos de FAQ.
- [ ] Carga razonablemente rápida en móvil.
- [ ] HTTPS en todo el sitio.

## 4. llms.txt (opcional, con expectativas claras)

- [ ] Publicas /llms.txt siguiendo la especificación (ver [plantilla](plantillas/llms.txt)).
- [ ] Es corto y enlaza a lo importante. Un llms.txt de 1 MB no se lo lee nadie, humano ni máquina.
- [ ] Sabes que hoy casi ningún bot de IA lo pide (97% de los llms.txt publicados no reciben ni una visita, según Ahrefs 2026) y que Google dice expresamente que su buscador no lo usa. Lo pones porque cuesta diez minutos, no porque esperes milagros.
- [ ] Si pides /llms.txt y tu servidor devuelve una página de error con estado 200 (soft 404), arréglalo: eso es peor que no tenerlo.

## 5. Identidad y autoridad

- [ ] El nombre de tu marca o proyecto se escribe igual en todas partes (web, perfiles, directorios).
- [ ] Tus perfiles públicos (LinkedIn, GitHub, WordPress.org, directorios de tu sector) existen, están completos y enlazan a tu web.
- [ ] Buscas menciones en medios y webs de tu sector: las IA citan a quien citan otros.
- [ ] Para negocios locales: mismos nombre, dirección y teléfono en todos los sitios.

## 6. Español: España y Latinoamérica

- [ ] Sabes a qué países te diriges. Una IA no responde igual a alguien de Madrid que a alguien de Ciudad de México: cambian las fuentes, los precios y hasta las palabras.
- [ ] Si tienes versiones por país, están marcadas con hreflang (es-ES, es-MX, es-AR...) y cada una habla en la moneda, la normativa y las ciudades de su país. El hreflang lo usa Google; para las IA, lo que cuenta es que el texto lo diga claro.
- [ ] Usas el vocabulario de tus clientes (ordenador o computadora, móvil o celular, coche, carro o auto) en el texto y en los prompts con los que mides.
- [ ] Buscas presencia en medios y directorios de cada país al que te diriges, no solo de España.

## 7. Medición

- [ ] Tienes una lista fija de 5-10 prompts y los lanzas cada semana en ChatGPT, Perplexity y Gemini (ver [prompts/medicion-citas-ia.md](prompts/medicion-citas-ia.md)).
- [ ] Registras los resultados en una hoja (tienes una [plantilla CSV](plantillas/registro-citas.csv)): si no mides, no sabes si algo funciona.
- [ ] En tu analítica (GA4 u otra) tienes un segmento con las visitas que llegan desde chatgpt.com, perplexity.ai, gemini.google.com, copilot.microsoft.com y claude.ai. ChatGPT suele añadir `utm_source=chatgpt.com` a sus enlaces, lo que facilita encontrarlas.
- [ ] En Search Console revisas el informe de IA generativa: cuántas impresiones tienen tus URLs en AI Overviews y AI Mode. No da consultas ni clics; los clics desde esas respuestas siguen mezclados con el resto de la búsqueda web.
- [ ] Si tienes acceso a los logs del servidor, miras cada mes si pasan OAI-SearchBot, Claude-SearchBot y PerplexityBot. Si no pasan nunca, revisa el firewall, el CDN o el plugin de seguridad.
