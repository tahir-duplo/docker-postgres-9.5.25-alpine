# docker-postgres-9.5.25-alpine
Docker Image For postgres-9.5.25-alpine

## Build Docker Image

```
docker run -e PG_USER=tahir -e POSTGRES_PASSWORD=rayan@21521 -e PG_DB=duplo -p 5432:5432 postgres:v1
```

## Build Docker Image With Named Volume

```
docker volume create test-data
docker volume inspect test-data
docker run -e PG_USER=tahir -e POSTGRES_PASSWORD=rayan@21521 -e PG_DB=duplo -v test-data:/var/data -p 5432:5432 postgres:v1
```