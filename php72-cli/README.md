# Docker for php72

Build with command

```bash
docker build -t php72 .
```

Run with command

```bash
docker run --rm \
    --user $(id -u):$(id -g) \
    --volume /local/path:/code \
    php72[:tag] [<options>]
```
