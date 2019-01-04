# Docker for php-cs-fixer

Build with command

```bash
docker build -t php-cs-fixer .
```

Run with command

```bash
docker run --rm \
    --user $(id -u):$(id -g) \
    --volume /local/path:/code \
    php-cs-fixer[:tag] [<options>]
```
