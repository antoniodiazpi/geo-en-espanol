# GEO en español

> Guía práctica y abierta de optimización para motores generativos (GEO): checklist accionable, plantillas de llms.txt y robots.txt, prompts para medir si las IA te citan y datos reales de una auditoría a 17 dominios.

En inglés hay una decena de listas y guías sobre GEO. En español apenas hay recursos abiertos de referencia. Este quiere serlo.

## Qué es el GEO

GEO (Generative Engine Optimization) es el conjunto de prácticas para que los buscadores con IA (ChatGPT, Perplexity, Gemini, las AI Overviews de Google) te encuentren, te entiendan y te citen en sus respuestas. No sustituye al SEO: se apoya en él.

## Qué contiene este repositorio

- [**checklist-geo.md**](checklist-geo.md): la lista completa de comprobaciones, ordenada por impacto.
- [**plantillas/llms.txt**](plantillas/llms.txt): plantilla comentada siguiendo la especificación de llmstxt.org.
- [**plantillas/robots.txt**](plantillas/robots.txt): plantilla con los bots de IA explicados uno a uno y tres posturas posibles.
- [**prompts/medicion-citas-ia.md**](prompts/medicion-citas-ia.md): método y prompts para medir cada semana si las IA te citan.
- [**plantillas/registro-citas.csv**](plantillas/registro-citas.csv): hoja para registrar cada semana si las IA te citan (se abre en Excel o Google Sheets).
- [**datos/auditoria-17-dominios.md**](datos/auditoria-17-dominios.md): auditoría real a 17 dominios propios, con tabla, conclusiones y los comandos para replicarla.
- [**scripts/auditoria-geo.sh**](scripts/auditoria-geo.sh): la misma auditoría automatizada para tus dominios, en un solo comando.
- [**glosario.md**](glosario.md): los términos de GEO explicados sin jerga.

Última revisión: octubre de 2026. Los bots y las herramientas cambian cada pocos meses; si ves algo desactualizado, abre una issue.

## Lo que sabemos y lo que no (sin humo)

Sabemos:

- Las IA con búsqueda rastrean la web. Si les bloqueas el acceso, no pueden leer tu contenido: como mucho apareces como un enlace suelto.
- Para Google, el GEO es SEO: su guía oficial (mayo de 2026) dice que para salir en AI Overviews o AI Mode no hace falta nada especial, ni llms.txt ni marcado específico.
- El contenido que responde preguntas concretas, con datos y con estructura clara, se cita más.
- Medir cada semana te dice si vas bien o si estás perdiendo el tiempo.

No está probado:

- **llms.txt.** Según un estudio de Ahrefs sobre 137.000 dominios (mayo de 2026), el 28% de los dominios ya publica un llms.txt, pero el 97% de esos archivos no recibe ni una sola petición, y la mayoría de las pocas peticiones que llegan no son de bots de IA. Google dice expresamente que su buscador no lo usa. Ponerlo cuesta diez minutos y no hace daño. Esperar que por sí solo te traiga citas, no.
- Nadie puede prometerte aparecer en las respuestas de una IA. Desconfía de quien lo haga.

## Para quién es

Para cualquier persona con una web en español que quiera entender y mejorar su visibilidad en las respuestas de las IA, sin necesidad de programar.

## Cómo contribuir

Pull requests bienvenidas: correcciones, casos con datos, traducciones de plantillas, nuevas fuentes. Abre primero una issue si el cambio es grande.

## Autor

**Antonio Díaz, TrailSEO** - consultoría SEO y GEO en España. https://trailseo.com

## Licencia

[MIT License](LICENSE). Puedes usar, copiar y adaptar todo, también con fines comerciales, siempre que mantengas el aviso de copyright. Si te resulta útil, se agradece una mención a TrailSEO con enlace.

## Fuentes

- Especificación llms.txt: https://llmstxt.org/
- Estudio de adopción de llms.txt (Ahrefs, 2026): https://ahrefs.com/blog/llmstxt-study/
- Bots de OpenAI (GPTBot, OAI-SearchBot, ChatGPT-User): https://developers.openai.com/api/docs/bots
- Rastreadores de Google, incluido Google-Extended: https://developers.google.com/crawling/docs/crawlers-fetchers/google-common-crawlers
- Guía de Google para optimizar para sus funciones de IA generativa (2026): https://developers.google.com/search/docs/fundamentals/ai-optimization-guide
- Control de IA generativa en Search Console: https://support.google.com/webmasters/answer/16908024
- Informe de rendimiento de IA generativa en Search Console: https://support.google.com/webmasters/answer/16984139
- Bots de Anthropic (ClaudeBot, Claude-User, Claude-SearchBot): https://support.claude.com/en/articles/8896518
- Bots de Perplexity (PerplexityBot, Perplexity-User): https://docs.perplexity.ai/docs/resources/perplexity-crawlers
- Bots de Meta (Meta-ExternalAgent, Meta-ExternalFetcher): https://developers.facebook.com/documentation/sharing/webmasters/web-crawlers
- Applebot y Applebot-Extended: https://support.apple.com/en-us/119829
- Content Signals Policy (Cloudflare): https://blog.cloudflare.com/content-signals-policy/
- Los bots de IA no ejecutan JavaScript (Vercel): https://vercel.com/blog/the-rise-of-the-ai-crawler
- Estándar robots.txt (RFC 9309): https://www.rfc-editor.org/rfc/rfc9309
