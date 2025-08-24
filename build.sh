#!/bin/bash
set -e

echo "Installing dependencies..."
pip install -r requirements.txt

# Executa migrações apenas se DB_URL estiver configurado
if [ -n "$DB_URL" ]; then
    echo "Running database migrations..."
    alembic upgrade head
else
    echo "DB_URL not set, skipping migrations"
fi

echo "Build completed successfully!"