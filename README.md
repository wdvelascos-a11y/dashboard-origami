# Dashboard Origami

Centro unificado de dashboards Metabase para los ERPs **GAD Latacunga** y **GAD Ibarra**.

## Demo

Una vez activado GitHub Pages, el sitio estará en:

```
https://<TU_USUARIO>.github.io/dashboard-origami/
```

## Estructura

```
dashboard-origami/
├── docs/
│   └── index.html      # Sitio publicado por GitHub Pages
└── README.md
```

## Despliegue (GitHub Pages desde /docs)

1. Crear repo nuevo en GitHub: **dashboard-origami** (público o privado con Pages habilitado).
2. Desde la raíz de esta carpeta:

   ```bash
   git init
   git add .
   git commit -m "init: dashboard origami"
   git branch -M main
   git remote add origin https://github.com/<TU_USUARIO>/dashboard-origami.git
   git push -u origin main
   ```

3. En GitHub: **Settings → Pages**
   - Source: `Deploy from a branch`
   - Branch: `main` / Folder: `/docs`
   - Save.

4. Esperar 1-2 min y abrir la URL pública.

## Notas técnicas

- Los dashboards de **GAD Latacunga** (`172.16.84.117`) requieren VPN. No cargarán fuera de la red interna; el botón 🔗 abre en pestaña externa como fallback.
- Metabase puede enviar `X-Frame-Options: DENY` o `Content-Security-Policy: frame-ancestors`. Si un dashboard no se embebe, configurar en Metabase: **Admin → Settings → Embedding** y agregar el dominio de Pages a los orígenes permitidos.
- El sitio es 100% estático (HTML+CSS+JS inline), sin build ni dependencias.

## Actualizar el sitio

Editar `docs/index.html` y empujar cambios:

```bash
git add docs/index.html
git commit -m "update: <descripción>"
git push
```

Pages se redespliega automáticamente.
