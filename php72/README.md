# Docker for php72

Build with command

```bash
docker build -t php72 .
```

Copy the `php.ini` with command

```bash
./setup.sh
```

Run with command

```bash
docker run --rm \
    --user $(id -u):$(id -g) \
    --volume ./php.ini:/usr/local/etc/php/php.ini:ro
    --volume /local/path:/code \
    emersonmx/php72[:tag] [<options>]
```
