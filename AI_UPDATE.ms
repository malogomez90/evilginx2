# Instrucciones para actualizar con IA

1) Revisar estado del repo
- Confirmar rama: `master`.
- Revisar cambios locales: `git status --short`.

2) Contenedor y dependencias
- El proyecto ya tiene `Dockerfile` y `docker-compose.yml` (host mode). No tocar si no es necesario.
- Build rápido: `docker compose build`.
- Levantar: `docker compose up -d`.
- Logs: `docker compose logs -f`.

3) Cambios de código
- Respeta ASCII y comentarios mínimos.
- No elimines cambios del usuario ni reformatees masivamente.
- Si editas, usa `go fmt` solo en archivos tocados si el usuario lo pide.

4) Tests
- No hay suite de tests declarada. Para validar build: `go build -mod=vendor main.go`.

5) Despliegue
- Host mode: ocupa 53/udp, 80, 443 en el host.
- Volúmenes: `./data` -> `/root/.evilginx`; `./phishlets`; `./redirectors`.
- Certificados se manejan con autocert (certmagic) si puertos 80/443 están libres.

6) Estilo de commits (si aplica)
- Mensajes breves en inglés o español, imperativo: ej. `Add docker host setup`.

7) Entregables
- Indica rutas editadas y pasos para reproducir (build/up/logs).
