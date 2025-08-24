#!/bin/bash

# Garante que o script pare se algum comando falhar
set -e

# Instala todas as dependências do seu projeto
pip install -r requirements.txt

# Executa as migrações do Alembic para atualizar o banco de dados
alembic upgrade head