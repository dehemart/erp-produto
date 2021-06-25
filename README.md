#erp-produto

##Execute
```shell
$ docker-compose up -d
```
##Dependencies
- The [erp-config-server](https://github.com/dehemart/erp-config-server) running;
- The [database]() running;
- The [environment](#environment) configured;

###Environment

Setting environment's variables:  
```jshell
SPRING_PROFILES_ACTIVE = local|dev|stg|prd 
SPRING_CLOUD_CONFIG_URI = http://localhost:8888
```

###Database
```yaml
version: '3.7'
services:
  postgres:
    image: postgres
    container_name: db
    restart: always
    environment:
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: postgres
      POSTGRES_DB: erp_db
      PGDATA: /var/lib/postgresql/data/pgdata
    logging:
      options:
        max-size: 10m
        max-file: "3"
    ports:
      - '5432:5432'
    volumes:
      - ./postgres-data:/var/lib/postgresql/data
```