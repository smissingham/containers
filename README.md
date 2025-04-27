# Containers

My declarative homelab services setup.

Note, important design notes:

- Using Tailscale, so all traffic to my services is via secure connection and not available publicly despite Traefik & Cloudflare setup giving me valid SSL certs on a public domain

- Using podman rootless on NixOS, so there will be some nuances to syntax around unprivileged ports, sockets, gpu binding etc.

- If you want to copy this repo, you'll need to create a `.env` file, as I have secrets in there that I'm not checking in to the repo