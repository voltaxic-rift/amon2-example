# amon2-example

## Getting started

```
docker-compose build
docker-compose run --rm app carton install
sqlite3 db/development.db < sql/sqlite.sql
docker-compose up -d
```