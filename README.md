tinyproxy-docker
=========

[Tinyproxy][1] is a light-weight HTTP/HTTPS proxy daemon for POSIX operating systems.

## docker-compose.yml

```yaml
version: "3.8"
services:
  tinyproxy:
    image: ghcr.io/pablozaiden/tinyproxy-docker
    ports:
      - "8888:8888"
    environment:
      - UPSTREAM_DNS=8.8.8.8
    volumes:
      - ./data:/etc/tinyproxy
    restart: unless-stopped
```

## Server Setup

```bash
$ docker-compose up -d
```

## Client Setup

```bash
$ curl -x https://127.0.0.1:8888 https://ifconfig.co
```

[1]: https://tinyproxy.github.io/
