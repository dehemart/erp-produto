# erp-produto

## Execute
```shell
$ docker-compose up -d
```
## Dependencies
- The [erp-config-server](https://github.com/dehemart/erp-config-server) running;
- The [database](https://github.com/dehemart/erp-database) running;
- The [environment](#environment) configured;

### Environment

Setting environment's variables:  
```jshell
SPRING_PROFILES_ACTIVE = local|dev|stg|prd 
SPRING_CLOUD_CONFIG_URI = http://localhost:8888
```
