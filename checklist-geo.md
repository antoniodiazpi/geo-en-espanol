# Checklist GEO: visibilidad en respuestas de IA

Ordenada por impacto. Cada punto se puede comprobar sin programar. Los datos y papers que respaldan cada punto están en [datos/estado-de-la-investigacion.md](datos/estado-de-la-investigacion.md).

## 1. Acceso: que los bots de IA puedan leerte

- [ ] Tu robots.txt no bloquea a los bots de búsqueda con IA: OAI-SearchBot y ChatGPT-User (OpenAI), Claude-SearchBot y Claude-User (Anthropic), PerplexityBot y Perplexity-User (Perplexity), Amzn-SearchBot y Amzn-User (Amazon). Búscalos en tudominio.com/robots.txt. Si no pueden rastrearte, no pueden citarte: en los estudios, la recuperación pesa mucho más que cualquier cambio en la página.
- [ ] Sabes que las AI Overviews y el AI Mode de Google usan Googlebot, y Copilot usa Bingbot: si bloqueas a esos dos, desapareces también del buscador clásico.
- [ ] Tu hosting o firewall no los bloquea tampoco (algunos hostings bloquean bots "desconocidos" sin avisar). Pídele a tu hosting la lista de bots bloqueados.
- [ ] Decides de forma consciente qué pasa con los bots de entrenamiento (GPTBot, ClaudeBot, Google-Extended, CCBot, Bytespider, Amazonbot, Meta-ExternalAgent, Applebot-Extended). No decidir nada es permitirlo todo: si no aparecen en tu robots.txt, entran.
- [ ] Si bloqueas Google-Extended, sabes que no te saca de las AI Overviews, pero sí puede restarte citas en la app de Gemini: según Google, ese token cubre el entrenamiento y también el *grounding* de Gemini.
- [ ] Si quieres decir que no al entrenamiento de varias empresas a la vez, conoces la señal común que se presentó el 30 de octubre de 2026: un grupo `User-agent: __usage_ai-training` con `Disallow: /` en el robots.txt (ver [plantilla](plantillas/robots.txt)). Anthropic ya la respeta; OpenAI la aplicará "en los próximos meses", Google a principios de 2027 y Microsoft desde el 1 de febrero de 2027. Es un borrador, no un estándar, y no sustituye las reglas por bot. En Google equivale a bloquear Google-Extended, así que también pierdes las citas por grounding en Gemini.
- [ ] Decides si quieres salir en las AI Overviews y el AI Mode. Desde agosto de 2026, Search Console tiene en su configuración un control de IA generativa de la Búsqueda (por defecto, incluido; si tu propiedad cuelga de otra, puede heredar su ajuste). Excluirte no afecta a tu posición en los resultados clásicos, pero dejas de recibir impresiones y tráfico de esas funciones. Ese control no cubre el entrenamiento: para eso está Google-Extended.
- [ ] Si quieres declarar tu postura de forma explícita, añade la línea Content-Signal al robots.txt (ver [plantilla](plantillas/robots.txt)). Es una propuesta de Cloudflare, no un estándar: no todos los bots la respetan.
- [ ] Si te importa Copilot: a partir del 1 de febrero de 2027, Bing separa el permiso de entrenamiento (en robots.txt o por página) del de grounding, es decir, el uso en respuestas de IA (solo por página). Si hoy usas NOARCHIVE o NOCACHE, revísalo antes del 1 de marzo de 2027: dejan de servir para esto.
- [ ] Tu sitemap está declarado en el robots.txt y al día.

## 2. Contenido citable

- [ ] Las páginas clave responden su pregunta principal en el primer párrafo, sin rodeos.
- [ ] Aportas pruebas verificables: datos propios (cifras, precios, estudios, comparativas), citas textuales de expertos y enlaces a tus fuentes. Es lo que mejor funcionó en los experimentos del paper que acuñó el término GEO (entre un 30 % y un 40 % más de visibilidad); repetir palabras clave no funcionó.
- [ ] Cubres las preguntas concretas en las que la IA desglosa una búsqueda (las consultas derivadas o *fan-out*): una sección con título claro para cada una. En un estudio de 2026 sobre 468.000 citas, lo que la IA busca explicaba la cita unas diez veces más que los rasgos de la página.
- [ ] No alargas por alargar: la longitud del texto apenas se relaciona con que te citen.
- [ ] Fechas visibles de publicación y actualización, y revisas de verdad las páginas que ya te traen citas: las IA prefieren contenido algo más reciente que Google. Cambiar la fecha sin cambiar el contenido es manipulación.
- [ ] Estructura clara: un H1, H2 por sección, listas donde ayudan.
- [ ] Sin páginas huérfanas: cada página importante recibe enlaces internos.

## 3. Estructura técnica

- [ ] El texto principal está en el HTML que sirve el servidor, no se carga después con JavaScript. Los bots de IA (GPTBot, ClaudeBot, PerplexityBot, OAI-SearchBot) no ejecutan JavaScript (Vercel, 2024). Compruébalo sin programar: abre la página, pulsa Ctrl+U (ver código fuente) y busca una frase de tu texto. Si no está, la IA tampoco la ve.
- [ ] Datos estructurados JSON-LD en la home (Organization o Person, según el caso) y en los contenidos (Article), coherentes con el texto visible. Sirven para los buscadores, pero no esperes citas por ellos: Google dice que no hace falta ningún marcado especial para salir en AI Overviews o AI Mode, y desde mayo de 2026 ya no muestra resultados enriquecidos de FAQ. En una prueba de Ahrefs (2026), ChatGPT, Claude, Perplexity, Gemini y AI Mode leyeron solo el texto visible e ignoraron el JSON-LD, y añadir schema a 1.885 páginas no movió sus citas.
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
- [ ] Buscas menciones en medios, webs de tu sector, YouTube y foros: las IA citan a quien citan otros. Las menciones de marca fuera de tu web se relacionan con la visibilidad en IA tres veces más que los enlaces (Ahrefs, 75.000 marcas), y los papers coinciden en que las IA citan sobre todo medios ganados, no la web de la propia marca.
- [ ] Sabes que juegas con desventaja si eres pequeño: las IA favorecen a las marcas que ya conocen. Las menciones de terceros son la forma de entrar en esa lista.
- [ ] Para negocios locales: mismos nombre, dirección y teléfono en todos los sitios.

## 6. Español: España y Latinoamérica

- [ ] Publicas en español aunque tengas versión en inglés. Las IA tienden a citar fuentes en el idioma de la pregunta (y en inglés); una página solo en inglés compite peor ante preguntas en español.
- [ ] Sabes a qué países te diriges. Una IA no responde igual a alguien de Madrid que a alguien de Ciudad de México: cambian las fuentes, los precios y hasta las palabras. Las AI Overviews aparecen en el 49 % de las búsquedas analizadas en México y en el 25 % en España (Ahrefs, 2026).
- [ ] Si tienes versiones por país, están marcadas con hreflang (es-ES, es-MX, es-AR...) y cada una habla en la moneda, la normativa y las ciudades de su país. El hreflang lo usa Google; para las IA, lo que cuenta es que el texto lo diga claro.
- [ ] Usas el vocabulario de tus clientes (ordenador o computadora, móvil o celular, coche, carro o auto) en el texto y en los prompts con los que mides.
- [ ] Buscas presencia en medios y directorios de cada país al que te diriges, no solo de España. Las webs de países hispanohablantes salen poco citadas incluso ante preguntas en español: en un estudio sobre salud mental, solo el 11 % de las citas procedía de esos países.

## 7. Medición

- [ ] Tienes una lista fija de 5-10 prompts y los lanzas cada semana en ChatGPT, Perplexity y Gemini (ver [prompts/medicion-citas-ia.md](prompts/medicion-citas-ia.md)).
- [ ] Registras los resultados en una hoja (tienes una [plantilla CSV](plantillas/registro-citas.csv)): si no mides, no sabes si algo funciona.
- [ ] En tu analítica (GA4 u otra) tienes un segmento con las visitas que llegan desde chatgpt.com, perplexity.ai, gemini.google.com, copilot.microsoft.com y claude.ai. ChatGPT suele añadir `utm_source=chatgpt.com` a sus enlaces, lo que facilita encontrarlas.
- [ ] En Search Console revisas el informe de IA generativa: cuántas impresiones tienen tus URLs en AI Overviews y AI Mode. No da consultas ni clics; los clics desde esas respuestas siguen mezclados con el resto de la búsqueda web.
- [ ] Tienes la web verificada en Bing Webmaster Tools y miras su informe AI Performance: muestra cuántas veces te cita Copilot y con qué consultas, algo que Google no enseña.
- [ ] No cuentas las citas como visitas: con una AI Overview en pantalla, la gente hace clic en un resultado la mitad de veces (8 % frente a 15 %, Pew 2025).
- [ ] Si tienes acceso a los logs del servidor, miras cada mes si pasan OAI-SearchBot, Claude-SearchBot y PerplexityBot. Si no pasan nunca, revisa el firewall, el CDN o el plugin de seguridad.
