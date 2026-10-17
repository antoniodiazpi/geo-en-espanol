# Glosario GEO

Los términos que aparecen en este repositorio, explicados sin jerga.

**AEO (Answer Engine Optimization).** Optimizar para "motores de respuesta": fragmentos destacados de Google, asistentes de voz y, cada vez más, IA. Se solapa casi por completo con el GEO.

**AI Mode.** El modo de búsqueda conversacional de Google: buscas preguntando y la IA contesta con enlaces a las fuentes.

**AI Overviews.** Los resúmenes generados con IA que Google muestra encima de los resultados de búsqueda. Usan lo que rastrea Googlebot.

**Bot o rastreador (crawler).** Programa que visita webs de forma automática. En GEO importan tres tipos:

- **De búsqueda**: indexan tu web para poder citarte después (OAI-SearchBot, Claude-SearchBot, PerplexityBot).
- **A petición del usuario**: leen una página en directo cuando alguien se lo pide a la IA (ChatGPT-User, Claude-User, Perplexity-User). Algunos no respetan robots.txt.
- **De entrenamiento**: recogen contenido para entrenar modelos (GPTBot, ClaudeBot, CCBot...).

**Cita y mención.** Hay cita cuando la IA enlaza tu web como fuente. Hay mención cuando nombra tu marca sin enlace. Las dos cuentan, pero solo la cita trae visitas.

**Content-Signal.** Línea opcional del robots.txt, propuesta por Cloudflare en 2025, que declara si permites usar tu contenido para buscar (`search`), para responder con IA (`ai-input`) y para entrenar (`ai-train`). No es un estándar: los bots no están obligados a respetarla.

**Datos estructurados (JSON-LD, schema.org).** Código invisible para el lector que describe la página a las máquinas: quién la firma, qué empresa hay detrás, cuándo se publicó. JSON-LD es el formato; schema.org, el vocabulario.

**Entrenamiento.** El proceso con el que se crea un modelo de IA a partir de enormes cantidades de texto. Lo que entra en el entrenamiento queda "aprendido", pero sin enlace a la fuente.

**GEO (Generative Engine Optimization).** Las prácticas para que los buscadores con IA te encuentren, te entiendan y te citen. Se apoya en el SEO; no lo sustituye.

**Grounding (anclaje).** Cuando la IA busca información en el momento de responder y basa su respuesta en ella, en lugar de fiarse solo de lo que aprendió al entrenarse. Es lo que permite que te cite con enlace.

**Hreflang.** Etiqueta que indica a Google qué versión de una página corresponde a cada idioma o país (por ejemplo, es-ES para España y es-MX para México).

**LLM (modelo de lenguaje grande).** El tipo de modelo de IA que hay detrás de ChatGPT, Claude, Gemini o Perplexity.

**llms.txt.** Archivo de texto en la raíz de tu web (tudominio.com/llms.txt) que resume el sitio y enlaza a lo importante para que lo lea una IA. Es una propuesta, no un estándar, y hoy casi ningún bot lo pide.

**Prompt.** La pregunta o instrucción que se le escribe a una IA.

**RAG (Retrieval-Augmented Generation).** La técnica de buscar documentos y dárselos al modelo antes de que responda. El grounding es un caso de RAG.

**robots.txt.** Archivo en la raíz de tu web (tudominio.com/robots.txt) que dice a cada bot qué puede rastrear y qué no. Lo respetan los bots que quieren, no es una barrera técnica.

**Sitemap.** Archivo XML con la lista de URLs de tu web, para que los buscadores las encuentren todas.

**Soft 404.** Cuando una página no existe pero el servidor responde "200 OK" con una página de error, en lugar de "404 No encontrado". Confunde a buscadores y bots: creen que hay contenido donde no lo hay.

**Token de producto.** Nombre que se usa en robots.txt para dar o quitar un permiso, pero que no corresponde a ningún bot que visite tu web. Google-Extended y Applebot-Extended son tokens: el rastreo lo hacen Googlebot y Applebot.

**User-agent.** El nombre con el que se identifica un bot (o un navegador) al visitar tu web. Es lo que pones en `User-agent:` dentro del robots.txt.
