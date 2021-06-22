# develop

## ondh/develop

### Build

```sh
/data/extend/develop/develop/dockerfiles/develop

docker build --file Dockerfile ./ -t ondh/develop

docker push ondh/develop
```

### Run

```sh
docker run -d --name develop -p 10022:22 ondh/develop

docker exec -it develop /bin/bash
```

## ondh/develop:base

### Build

```sh
/data/extend/develop/develop/dockerfiles/develop

docker build --file Dockerfile.base ./ -t ondh/develop:base

docker push ondh/develop:base
```

### Run

```sh
docker run -d --name develop -p 10022:22 ondh/develop:base

docker exec -it develop /bin/bash
```

## ondh/develop:python

### Build

```sh
/data/extend/develop/develop/dockerfiles/develop

docker build --file Dockerfile.python ./ -t ondh/develop:python

docker push ondh/develop:python
```

### Run

```sh
docker run -d --name develop -p 10022:22 ondh/develop:base

docker exec -it develop /bin/bash
```

## ondh/develop:node

### Build

```sh
/data/extend/develop/develop/dockerfiles/develop

docker build --file Dockerfile.node ./ -t ondh/develop:node

docker push ondh/develop:node
```

### Run

```sh
docker run -d --name develop -p 10022:22 ondh/develop:base

docker exec -it develop /bin/bash
```
