# Workspace

## Setup

### Buat docker network
- backend
    ```bash
    docker network create \
    --driver=bridge \
    --subnet=172.20.0.0/16 \
    backend
    ```

- frontend
    ```baseh
    docker network create \
    --driver=bridge \
    --subnet=172.21.0.0/16 \
    frontend
    ```
> atau ipvlan_mode
```bash
docker network create -d ipvlan \
    --subnet=10.10.11.0/16 \
    --gateway=10.10.11.1 \
    -o ipvlan_mode=l2 \
    -o parent=eth0 \
    backend
```

### Copy all .env.example

```bash
find ./ -depth -name ".env.example" -exec sh -c 'cp -n "$1" "${1%.example}"' _ {} \;
```

### Edit setiap environment file .env

### Start
```bash
make start
```