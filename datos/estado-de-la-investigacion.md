# Qué dice la investigación sobre GEO (noviembre de 2026)

Resumen de lo que dicen los papers académicos y los estudios con datos publicados entre 2023 y noviembre de 2026. Cada afirmación lleva su fuente. Aquí solo entra lo que se ha podido comprobar en la fuente original o en su ficha de arXiv. Si algo no se pudo confirmar, se ha dejado fuera.

## Antes de leer: cuánto fiarse

- **Papers.** Muchos son preprints de arXiv, todavía sin revisión por pares. Varios prueban motores simulados, en inglés o con páginas de software B2B. Cuando un paper sí se ha publicado en un congreso, se indica.
- **Estudios de empresas** (Ahrefs, Seer, SparkToro…). Usan muestras enormes, pero quien los firma vende herramientas de SEO o GEO, y casi todos miden **correlaciones**, no causas.
- **Los motores cambian cada mes.** Un resultado de 2024 puede no valer hoy.

## Las ocho conclusiones más sólidas

### 1. Sin recuperación no hay cita

Antes de citarte, la IA tiene que encontrar tu página con sus propias búsquedas. En un análisis de 468.037 citas, lo que buscaba el motor explicaba en torno al 32 % de la variación en las citas, frente al 2,8 % de los rasgos de la página. Todas las páginas citadas las había recuperado antes la propia búsqueda del modelo (Chen y Koudas, 2026).

C-SEO Bench, presentado en NeurIPS 2025, llegó a lo mismo por otro camino: las técnicas de SEO clásico, que mejoran la posición de un documento en la búsqueda, funcionaron mejor que las de "SEO conversacional".

**Qué hacer:** acceso para los bots, HTML limpio y contenido que responda a las preguntas concretas en que la IA desglosa una búsqueda (ver [glosario](../glosario.md)).

### 2. Ningún truco de GEO ha demostrado un efecto estable

Una revisión de 45 estudios publicados hasta julio de 2026 concluye que ninguna técnica ha mostrado un efecto causal estable en el tiempo y en varios motores a la vez, ni sobre la visibilidad ni sobre los clics (Martinez, 2026).

En C-SEO Bench, la mayoría de los métodos de "SEO conversacional" fueron ineficaces y muchos empeoraron la posición. Además, la ganancia se reduce a medida que más competidores aplican el mismo truco.

**Qué hacer:** desconfía de quien venda una técnica de GEO con resultados garantizados.

### 3. Lo que mejor funciona en laboratorio: aportar pruebas

El paper que acuñó el término GEO (Aggarwal et al., KDD 2024) probó nueve formas de reescribir una página. Las tres mejores fueron citar fuentes, añadir citas textuales y añadir estadísticas: entre un 30 % y un 40 % más de visibilidad en la respuesta. Repetir palabras clave no funcionó, y las webs peor posicionadas fueron las que más ganaron.

Ojo: se probó con los motores de 2023, en parte simulados.

**Qué hacer:** datos propios, citas de expertos con nombre y enlaces a tus fuentes.

### 4. Lo que dicen de ti fuera de tu web pesa más que tu web

- Las IA citan sobre todo **medios ganados**, es decir, lo que terceros publican sobre una marca, y mucho menos la web de la propia marca (Chen, Wang, Chen y Koudas, 2025).
- En 75.000 marcas, las menciones de marca en otras webs se relacionaban con la visibilidad en AI Overviews tres veces más que los enlaces: 0,66 frente a 0,22 de correlación (Ahrefs, 2025).
- Las IA favorecen a las marcas que ya dominan su mercado: las del quintil superior se citan entre 1,4 y 2,8 veces más que la media. El sesgo ya está en la memoria del modelo, y buscar en la web no lo corrige del todo (Monaco, Lenti y Pierri, 2026).
- ChatGPT incluso añade a sus búsquedas las marcas que ya conoce (Chen y Koudas, 2026).

**Qué hacer:** prensa, reseñas, foros y vídeos de terceros. Para una marca pequeña, es la única forma de entrar en la lista.

### 5. Schema y llms.txt: sin efecto medible

- **Schema.** Ahrefs (2026) siguió 1.885 páginas que añadieron JSON-LD y las comparó con otras parecidas que no lo hicieron. Las citas en AI Mode y ChatGPT no cambiaron de forma apreciable. En una prueba de lectura directa, ChatGPT, Claude, Perplexity, Gemini y AI Mode extrajeron solo el texto visible e ignoraron el JSON-LD.
- **llms.txt.** El 97 % de los llms.txt publicados no recibió ni una petición en mayo de 2026 (Ahrefs). Google dice que su buscador no lo usa.

**Qué hacer:** pon schema por el buscador, no por las IA. El llms.txt es opcional.

### 6. La frescura ayuda poco, y falsearla es manipulación

- Las páginas que citan los asistentes de IA son, de media, un 25,7 % más recientes que los resultados orgánicos. Aun así, la página citada media tiene casi tres años (Ahrefs).
- En un experimento, cambiar solo la fecha de publicación de un texto bastó para subirlo hasta 95 puestos en los rankings que hacen siete modelos de IA (Fang et al., SIGIR-AP 2025). Precisamente por eso, falsear fechas es manipulación.

**Qué hacer:** actualiza de verdad las páginas que ya te traen citas, y cambia la fecha solo cuando cambies el contenido.

### 7. Que te citen no es que te visiten

- Con un resumen de IA en pantalla, la gente hizo clic en un resultado en el 8 % de las visitas, frente al 15 % sin resumen. En el enlace citado dentro del resumen solo clicó el 1 % (Pew Research Center, 2025, 68.879 búsquedas).
- El CTR de la primera posición fue un 58 % menor con AI Overview (Ahrefs, diciembre de 2025 frente a diciembre de 2023).
- En Francia, las AI Overviews llegaron el 22 de julio de 2026. Las webs más expuestas perdieron un 23,1 % de CTR en los primeros nueve días (Ahrefs). Es lo más parecido que hay a lo que vivió España, donde llegaron en marzo de 2025.
- Aun así, aparecer dentro del resumen ayuda: las marcas citadas en la AI Overview tuvieron más del doble de CTR que las no citadas (Seer Interactive, 2026).
- El tráfico que mandan los asistentes de IA sigue siendo pequeño: el 0,46 % de las visitas en octubre de 2026, frente al 27,55 % de los buscadores (Ahrefs, 118.671 webs).

### 8. Medir una vez no sirve

- La misma pregunta casi nunca recibe la misma respuesta. La probabilidad de que dos respuestas de ChatGPT, Claude o Google AI recomienden la misma lista de marcas fue inferior a 1 entre 100 (SparkToro y Gumshoe, 2026, 2.961 consultas).
- La Universidad de St. Gallen recomienda tratar la visibilidad como una distribución. Su recomendación: al menos 7 repeticiones por prompt y día para medir marcas, y 8 para medir qué fuentes se citan (Schulte, Bleeker y Kaufmann, 2026).

**Qué hacer:** sigue el [método de medición](../prompts/medicion-citas-ia.md), que ya pide repetir cada prompt.

## En español: lo que sabemos

No se ha encontrado ningún paper de GEO centrado en el español. Es un hueco: si investigas en esto, hay sitio. Lo que sí hay son estudios multilingües con el español dentro.

- **El idioma de la pregunta manda.** Los sistemas que buscan y citan prefieren documentos en el idioma de la pregunta y, además, en inglés. A veces citan un documento en inglés menos relevante antes que uno relevante en otro idioma (Ki et al., 2025; Park y Lee, 2025).
- **El idioma elige el mercado.** En un estudio piloto con ChatGPT, el idioma de la pregunta decidía qué proveedores nacionales aparecían, y el país desde el que se preguntaba decidía de qué mercado. Los dos efectos eran independientes (Zatuchin, 2026; pocas pruebas, tómalo como indicio).
- **Las webs de países hispanohablantes salen poco.** En una auditoría de 15.942 citas de ChatGPT, Perplexity y AI Overviews sobre salud mental, solo el 11,3 % de las citas para preguntas en español procedía de países donde el español es lengua oficial (Nguyen et al., 2026).
- **México va muy por delante de España en AI Overviews:** aparecen en el 49,4 % de las búsquedas analizadas en México y en el 24,7 % en España (Ahrefs, 2026, 217 millones de consultas).
- **Las IA se equivocan también en español.** En el estudio de la UER y la BBC con 22 medios públicos de 18 países, el 45 % de las respuestas sobre noticias tenía al menos un problema importante y el 31 % fallaba en las fuentes. El resultado fue parecido en los 14 idiomas (octubre de 2025).

**Qué hacer:** publica en español, consigue menciones en medios en español de cada país al que te diriges y mide con prompts en español.

## Lo que la evidencia no respalda

- Que el llms.txt aumente la visibilidad.
- Que el schema haga que las IA te citen.
- Que el contenido largo se cite más: la correlación entre número de palabras y citas fue de 0,04 (Ahrefs).
- Que estar en el top 10 de Google garantice la cita. Solo el 38 % de las citas de las AI Overviews vino del top 10 en 2026 (Ahrefs, con un método distinto al de 2025).
- Que una "posición en ChatGPT" sacada de una sola respuesta signifique algo.
- Que el tráfico de IA esté sustituyendo al de Google.
- Que haya una técnica de GEO que funcione siempre y en todos los motores.

## Funcionan en laboratorio, pero no las uses

Varios papers demuestran que se puede manipular a los buscadores con IA:

- texto oculto optimizado para que un producto salga primero (Kumar y Lakkaraju, 2024);
- instrucciones inyectadas en la página (Pfrommer et al., EMNLP 2024);
- desacreditar a la competencia (Nestaas, Debenedetti y Tramèr, ICLR 2025);
- fechas falsas (Fang et al., 2025).

Son prácticas engañosas, los motores las persiguen y, si las usa todo el mundo, empeoran las respuestas para todos. Se citan aquí para que sepas reconocerlas, no para aplicarlas.

## Fuentes

### Papers

- Aggarwal, P. et al. (2024). *GEO: Generative Engine Optimization*. KDD 2024. https://arxiv.org/abs/2311.09735
- Puerto, H. et al. (2025). *C-SEO Bench: Does Conversational SEO Work?* NeurIPS 2025 (Datasets and Benchmarks). https://arxiv.org/abs/2506.11097
- Chen, M., Wang, X., Chen, K. y Koudas, N. (2025). *Generative Engine Optimization: How to Dominate AI Search*. Preprint. https://arxiv.org/abs/2509.08919
- Chen, M. y Koudas, N. (2026). *What Drives AI Citations? Content, Retrieval and Model Knowledge in Generative Engine Optimization (GEO)*. Preprint. https://arxiv.org/abs/2610.15033
- Martinez, O. (2026). *Optimizing Visibility in Generative Engines: A Critical Survey of Generative Engine Optimization (2023–2026)*. Preprint. https://arxiv.org/abs/2607.14035
- Monaco, G., Lenti, J. y Pierri, F. (2026). *The Popular Get More Popular: Auditing Brand Bias in Generative Search*. Preprint. https://arxiv.org/abs/2611.07614
- Schulte, J., Bleeker, M. y Kaufmann, P. (2026). *Don't Measure Once: Measuring Visibility in AI Search (GEO)*. Preprint. https://arxiv.org/abs/2604.07585
- Fang, H. et al. (2025). *Do Large Language Models Favor Recent Content? A Study on Recency Bias in LLM-Based Reranking*. SIGIR-AP 2025. https://arxiv.org/abs/2509.11353
- Ki et al. (2025). *Linguistic Nepotism: Trading-off Quality for Language Preference in Multilingual RAG*. Preprint. https://arxiv.org/abs/2509.13930
- Park y Lee (2025). *Investigating Language Preference of Multilingual RAG Systems*. Findings of ACL 2025. https://arxiv.org/abs/2502.11175
- Nguyen, P. A. et al. (2026). *Sources of Truth: A Multi-Platform, Multilingual Audit of Citations in AI Mental Health Information Queries*. Preprint. https://arxiv.org/abs/2609.00319
- Zatuchin, D. (2026). *The Language of the Question Selects the Market*. Preprint, estudio piloto. https://arxiv.org/abs/2608.30052
- Kumar, A. y Lakkaraju, H. (2024). *Manipulating Large Language Models to Increase Product Visibility*. Preprint. https://arxiv.org/abs/2404.07981
- Pfrommer, S. et al. (2024). *Ranking Manipulation for Conversational Search Engines*. EMNLP 2024. https://arxiv.org/abs/2406.03589
- Nestaas, F., Debenedetti, E. y Tramèr, F. (2025). *Adversarial Search Engine Optimization for Large Language Models*. ICLR 2025. https://arxiv.org/abs/2406.18382

### Estudios con datos

- Pew Research Center (2025). Los usuarios de Google hacen menos clic cuando aparece un resumen de IA. https://www.pewresearch.org/short-reads/2025/07/22/google-users-are-less-likely-to-click-on-links-when-an-ai-summary-appears-in-the-results/
- UER y BBC (2025). *News Integrity in AI Assistants*. https://www.ebu.ch/research/open/report/news-integrity-in-ai-assistants
- Ahrefs (2026). Caída del CTR con AI Overviews, actualización. https://ahrefs.com/blog/ai-overviews-reduce-clicks-update/
- Ahrefs (2026). Impacto de las AI Overviews en Francia. https://ahrefs.com/blog/ai-overviews-france-impact/
- Ahrefs (2026). AI Overviews por país, 217 millones de consultas. https://ahrefs.com/blog/ai-overviews-international/
- Ahrefs (2026). Schema y citas en IA. https://ahrefs.com/blog/schema-ai-citations/
- Ahrefs (2026). Estudio de llms.txt en 137.000 dominios. https://ahrefs.com/blog/llmstxt-study/
- Ahrefs (2025). Correlaciones de visibilidad de marca en IA, 75.000 marcas. https://ahrefs.com/blog/ai-brand-visibility-correlations/
- Ahrefs. Frescura del contenido citado por IA. https://ahrefs.com/blog/fresh-content/
- Ahrefs. Contenido corto frente a largo en AI Overviews. https://ahrefs.com/blog/short-vs-long-content-in-ai-overviews/
- Ahrefs (2026). Citas de AI Overviews y top 10. https://ahrefs.com/blog/ai-overview-citations-top-10/
- Ahrefs (2026). Tráfico de IA frente a buscadores (se actualiza cada mes). https://ahrefs.com/benchmarks/ai-vs-search
- Seer Interactive (2026). Impacto de las AI Overviews en el CTR. https://www.seerinteractive.com/insights/aio-impact-on-google-ctr-2026-update
- SparkToro y Gumshoe (2026). Consistencia de las recomendaciones de marcas de las IA. https://sparktoro.com/blog/2026/01/
