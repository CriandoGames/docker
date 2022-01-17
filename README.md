#docker-compose exemple

Micro sistema usando docker compose - 1 container tem o nodejs e o segundo o mysql

## Inicializando o projeto

  Levantamos o docker com: 
  
    docker compose up -d

---
  
  Em um terminal:

  Iremos executar os seguintes comandos:

  docker exec -it db bash

``` 
  mysql  -u root -pmysql
  use nodedb;
  create table people(id int not null auto_increment, name varchar(255), primary key(id));
``` 
    Em um terminal:
``` 
  docker exec -it app bash
  node index.js
```

### Observações:

isso fara que um dado seja inserido na tabela people.

