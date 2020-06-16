# Barbeator
Este projeto é referente a disciplina de Engenharia de Software (Laboratório).

## Requisitos

Para executar o projeto é necessário ter instalado:

* [Docker](https://docs.docker.com/engine/install/ubuntu/)
* [docker-compose](https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-18-04-pt)

## Executando

Para executar com o Docker siga as instruções abaixo:

```
docker-compose up --build
```

Após isso, será necessário fazer as migrações para seu banco:

```
docker-compose run web rails db:migrate
```

Agora é só acessar pelo browser

http://localhost:3000
