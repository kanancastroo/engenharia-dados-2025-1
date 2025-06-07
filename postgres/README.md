## Para acessar o PSQL (banco de dados via terminal):

Certifique-se de que o container está rodando:

```docker-compose up -d```

Entre no container PostgreSQL:

```docker exec -it dbpg bash```

Acesse o banco com o psql já instalado dentro do container:

```psql -U postgres -d warehouse```

Agora você verá um prompt como este:

```warehouse=#```

A partir daqui você pode executar comandos SQL como:

```SELECT * FROM clientes;```

Para sair:

```\q```

(e depois ```exit``` para sair do bash)