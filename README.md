# erp-produto

Service to manage products from erp 

## Dependencies
- The [erp-config-server](https://github.com/dehemart/erp-config-server) running;
- The [database](https://github.com/dehemart/erp-database) running;
- The [environment](#environment) configured;

### Environment
Setting environment's variables:  
```shell
SPRING_PROFILES_ACTIVE = local|dev|stg|prd 
SPRING_CLOUD_CONFIG_URI = http://localhost:8888
```

## Deploy Docker image
Setting version in pom.xml and:
```shell
$ mvn clean install
```

## Execute
```shell
$ docker-compose up -d
```
