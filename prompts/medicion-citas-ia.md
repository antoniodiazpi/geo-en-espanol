# Medición: ¿te citan las IA?

El GEO sin medición es fe. Hecho a mano, este método lleva entre una y dos horas a la semana; las herramientas de seguimiento de IA lo automatizan.

## Método

1. Fija una lista de 5-10 prompts que importen a tu proyecto y no la cambies.
2. Cada semana, el mismo día, lánzalos en ChatGPT (con búsqueda activada), Perplexity y Gemini. Sesión limpia o incógnito, para que no te personalice. Si Google es importante para ti, mira también si sale una AI Overview o qué responde el AI Mode.
3. Lanza cada prompt varias veces en cada IA: la misma pregunta casi nunca da la misma respuesta. En un estudio de SparkToro (2026), la probabilidad de que dos respuestas recomendaran la misma lista de marcas era inferior a 1 entre 100. La Universidad de St. Gallen recomienda al menos 7 repeticiones por prompt (8 si te importa qué fuentes cita). Si no llegas, usa menos prompts y más repeticiones. Anota en cuántas apareces (por ejemplo, 5 de 7), nunca una "posición" sacada de una sola respuesta.
4. Pásalo todo a la tabla de registro (o a la [plantilla CSV](../plantillas/registro-citas.csv), que se abre en Excel o Google Sheets).
5. Compara semana a semana. Las citas tardan semanas en moverse: no midas el mismo día que cambias la web.

## Prompts de ejemplo (adáptalos a tu proyecto)

### De marca
- "¿Qué es [tu marca]?"
- "¿Quién está detrás de [tu marca]?"

### De categoría
- "¿Quién ofrece [tu servicio] en [tu ciudad]?"
- "Mejores [tu categoría] en [tu ciudad]"
- "¿Cuánto cuesta [tu servicio] en [tu ciudad]?"

### De problema
- "¿Cómo puedo [problema que resuelves]?"
- "¿Merece la pena [tu tipo de solución]?"

### Comparativa
- "[Tu marca] vs [competidor]"
- "Alternativas a [líder del sector]"

Mide en español, no en inglés: el idioma de la pregunta cambia qué fuentes y qué marcas salen. Si te diriges a varios países, escribe los prompts como hablan tus clientes de cada país (móvil o celular, ordenador o computadora) y, si puedes, lánzalos desde allí: las respuestas también cambian según desde dónde preguntes. Apunta idioma y país en las notas.

## Tabla de registro

| Fecha | IA | Prompt | Repeticiones | Veces que apareces | ¿Con enlace? | ¿A quién cita en tu lugar? | Notas |
|---|---|---|---|---|---|---|---|
| | | | | | | | |

## Cómo leer los resultados

- Aparecer sin enlace ya es algo: la IA te conoce. El enlace suele llegar después.
- Fíjate en el porcentaje de apariciones a lo largo de varias semanas, no en una semana suelta: las citas van y vienen de un día para otro.
- Cruza con los datos de las propias plataformas: el informe de IA generativa de Search Console (impresiones) y AI Performance de Bing Webmaster Tools (citas en Copilot y consultas).
- Apunta siempre quién sale en tu lugar: es tu competidor real en IA, que a veces no es el de Google.
- Si en 8 semanas nada se mueve, toca revisar acceso ([checklist, punto 1](../checklist-geo.md#1-acceso-que-los-bots-de-ia-puedan-leerte)) y autoridad ([punto 5](../checklist-geo.md#5-identidad-y-autoridad)), no las plantillas.
