# Auditoría GEO a 17 dominios propios (octubre de 2026)

Auditoría real hecha el 17 de octubre de 2026 a 17 dominios activos de un mismo propietario (el autor del repo), todos en España y casi todos en WordPress. Solo se nombran los dos dominios del autor (antoniodiaz.pro y trailseo.com); el resto va anonimizado (Dominio A-O). La metodología y los comandos permiten replicarla.

No es una muestra representativa de nada: es una cartera real, con sus aciertos y sus vergüenzas. Va de eso.

## Qué se midió

- /llms.txt: si existe de verdad o el servidor devuelve una página de error con estado 200 (soft 404).
- /robots.txt: si bloquea bots de IA, si declara Content-Signal y si tiene sitemap.
- Home: si tiene datos estructurados JSON-LD detectables en el HTML inicial.

## Resultados

| Dominio | llms.txt | Content-Signal en robots | Schema en home | Sitemap |
|---|---|---|---|---|
| Dominio A | Sí (Rank Math) | Sí: todo permitido | Sí | Sí |
| Dominio B | Sí (Rank Math) | Sí: todo permitido | Sí | Sí |
| trailseo.com | Sí (Rank Math) | Sí: todo permitido | No detectado | Sí |
| Dominio C | Sí (Rank Math) | No | Sí | Sí |
| antoniodiaz.pro | Sí (Rank Math) | No | No detectado | Sí |
| Dominio D | Sí (Rank Math) | Sí: todo permitido | Sí | Sí |
| Dominio E | No (soft 404) | No | Sí | Sí |
| Dominio F | Sí (propio, 1,6 MB) | Sí: todo permitido | No detectado | Sí |
| Dominio G | No (soft 404) | No | No detectado | Sí |
| Dominio H | Sí (Rank Math) | No | Sí | Sí |
| Dominio I | Sí (Rank Math) | Sí: todo permitido | Sí | Sí |
| Dominio J | No (soft 404) | No (robots.txt vacío) | Sí | No |
| Dominio K | No (soft 404) | No | Sí | Sí |
| Dominio L | Sí (propio) | Sí: todo permitido | Sí | Sí |
| Dominio M | Sí (Rank Math) | No | Sí | Sí |
| Dominio N | Sí (Rank Math) | No | Sí | Sí |
| Dominio O | Sí (Rank Math) | No | Sí | Sí |

## Conclusiones

1. **13 de 17 tienen llms.txt real (76%).** Muy por encima del 28% que mide Ahrefs en dominios con analítica, y la razón no es mérito propio: la mayoría lo genera Rank Math automáticamente. Lección: las herramientas ya hacen esto solas; el trabajo está en otra parte.
2. **0 de 17 bloquea a los bots de IA.** Nadie decidió nada: simplemente nadie puso la regla. Es la situación por defecto de casi toda la web hispana.
3. **7 de 17 declaran Content-Signal con ai-train=yes**, es decir, permiso explícito para entrenar modelos con su contenido. Conviene que eso sea una decisión tomada, no heredada de un plugin.
4. **13 de 17 tienen JSON-LD en la home.** Los cuatro que no incluyen, con ironía, a la propia marca de servicios SEO (trailseo.com) y al sitio personal (antoniodiaz.pro).
5. **El Dominio F tiene un llms.txt de 1,6 MB.** Ninguna IA va a leer eso entero. Un llms.txt es un índice corto con enlaces, no un volcado de la web.
6. **4 dominios responden 200 con una página de error al pedir /llms.txt** (soft 404). Peor que no tener archivo: el servidor miente sobre su estado.
7. **Un dominio tiene el robots.txt completamente vacío.**

## Cómo replicar esta auditoría en tus dominios

    # ¿Existe robots.txt y qué dice de bots de IA?
    curl -s https://tudominio.com/robots.txt

    # ¿Existe llms.txt de verdad o es un soft 404?
    curl -s -o /dev/null -w '%{http_code}\n' https://tudominio.com/llms.txt
    curl -s https://tudominio.com/llms.txt | head -5
    # Si lo primero que ves es HTML, no tienes llms.txt: tienes un soft 404.

    # ¿Tiene la home datos estructurados?
    curl -s https://tudominio.com/ | grep -c 'application/ld+json'

## Limitaciones

- 17 dominios de una sola persona no representan a "la web española".
- La detección de schema se hizo sobre el HTML inicial de la home; lo que se cargue después por JavaScript no se ha contado.
- Esto mide acceso y estructura. No mide citas reales: para eso está prompts/medicion-citas-ia.md.
