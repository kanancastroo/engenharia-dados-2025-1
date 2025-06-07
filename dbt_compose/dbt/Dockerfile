FROM python:3.9-slim

# Instalar dependências do sistema
RUN apt-get update && apt-get install -y build-essential libpq-dev git

# Instalar dbt para PostgreSQL
RUN pip install dbt-postgres

# Criar diretório do dbt e definir variáveis
RUN mkdir -p /root/.dbt
WORKDIR /usr/app