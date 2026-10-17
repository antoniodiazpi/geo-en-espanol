# Checklist GEO: visibilidad en respuestas de IA

Ordenada por impacto. Cada punto se puede comprobar sin programar.

## 1. Acceso: que los bots de IA puedan leerte

- [ ] Tu robots.txt no bloquea a los bots de búsqueda con IA: OAI-SearchBot y ChatGPT-User (OpenAI), Claude-SearchBot y Claude-User (Anthropic), PerplexityBot y Perplexity-User (Perplexity). Búscalos en tudominio.com/robots.txt.
- [ ] Sabes que las AI Overviews y el AI Mode de Google usan Googlebot, y Copilot usa Bingbot: si bloqueas a esos dos, desapareces también del buscador clásico.
- [ ] Tu hosting o firewall no los bloquea tampoco (algunos hostings bloquean bots "desconocidos" sin avisar). Pídele a tu hosting la lista de bots bloqueados.
- [ ] Decides de forma consciente qué pasa con los bots de entrenamiento (GPTBot, ClaudeBot, Google-Extended, CCBot, Bytespider, Amazonbot, Meta-ExternalAgent, Applebot-Extended). No decidir nada es permitirlo todo: si no aparecen en tu robots.txt, entran.
- [ ] Si bloqueas Google-Extended, sabes que no te saca de las AI Overviews, pero sí puede restarte citas en la app de Gemini: según Google, ese token cubre el entrenamiento y también el *grounding* de Gemini.
- [ ] Si quieres declarar tu postura de forma explícita, añade la línea Content-Signal al robots.txt (ver [plantilla](plantillas/robots.txt)). Es una propuesta de Cloudflare, no un estándar: no todos los bots la respetan.
- [ ] Tu sitemap está declarado en el robots.txt y al día.

## 2. Contenido citable

- [ ] Las páginas clave responden su pregunta principal en el primer párrafo, sin rodeos.
- [ ] Aportas datos propios que no están en otra parte (cifras, precios, estudios, comparativas). Es lo que más se cita.
- [ ] Fechas visibles de publicación y actualización.
- [ ] Estructura clara: un H1, H2 por sección, listas donde ayudan.
- [ ] Sin páginas huérfanas: cada página importante recibe enlaces internos.

## 3. Estructura técnica

- [ ] El texto principal está en el HTML que sirve el servidor, no se carga después con JavaScript. Los bots de IA (GPTBot, ClaudeBot, PerplexityBot, OAI-SearchBot) no ejecutan JavaScript. Compruébalo sin programar: abre la página, pulsa Ctrl+U (ver código fuente) y busca una frase de tu texto. Si no está, la IA tampoco la ve.
- [ ] Datos estructurados JSON-LD en la home (Organization o Person, según el caso) y en los contenidos (Article, FAQPage si hay preguntas frecuentes). Ojo: desde 2023 Google limita el resultado enriquecido de FAQ a webs oficiales y de salud; el marcado sigue siendo válido, pero no esperes verlo en Google.
- [ ] Carga razonablemente rápida en móvil.
- [ ] HTTPS en todo el sitio.

## 4. llms.txt (opcional, con expectativas claras)

- [ ] Publicas /llms.txt siguiendo la especificación (ver [plantilla](plantillas/llms.txt)).
- [ ] Es corto y enlaza a lo importante. Un llms.txt de 1 MB no se lo lee nadie, humano ni máquina.
- [ ] Sabes que hoy casi ningún bot de IA lo pide (97% de los llms.txt publicados no reciben ni una visita, según Ahrefs 2026). Lo pones porque cuesta diez minutos, no porque esperes milagros.
- [ ] Si pides /llms.txt y tu servidor devuelve una página de error con estado 200 (soft 404), arréglalo: eso es peor que no tenerlo.

## 5. Identidad y autoridad

- [ ] El nombre de tu marca o proyecto se escribe igual en todas partes (web, perfiles, directorios).
- [ ] Tus perfiles públicos (LinkedIn, GitHub, WordPress.org, directorios de tu sector) existen, están completos y enlazan a tu web.
- [ ] Buscas menciones en medios y webs de tu sector: las IA citan a quien citan otros.
- [ ] Para negocios locales: mismos nombre, dirección y teléfono en todos los sitios.

## 6. Medición

- [ ] Tienes una lista fija de 5-10 prompts y los lanzas cada semana en ChatGPT, Perplexity y Gemini (ver [prompts/medicion-citas-ia.md](prompts/medicion-citas-ia.md)).
- [ ] Registras los resultados en una hoja: si no mides, no sabes si algo funciona.
- [ ] En tu analítica (GA4 u otra) tienes un segmento con las visitas que llegan desde chatgpt.com, perplexity.ai, gemini.google.com, copilot.microsoft.com y claude.ai.
- [ ] En Search Console revisas el informe de IA generativa: cuántas impresiones tienen tus URLs en AI Overviews y AI Mode. No da consultas ni clics; los clics desde esas respuestas siguen mezclados con el resto de la búsqueda web.
- [ ] Si tienes acceso a los logs del servidor, miras cada mes si pasan OAI-SearchBot, Claude-SearchBot y PerplexityBot. Si no pasan nunca, revisa el firewall, el CDN o el plugin de seguridad.
