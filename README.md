# WorkoutAPI - API para Competição de CrossFit

Esta é uma API RESTful desenvolvida com FastAPI para gerenciar atletas, categorias e centros de treinamento em uma competição de CrossFit. O projeto utiliza tecnologias assíncronas para garantir alta performance e escalabilidade.

## Stack Tecnológica

  * **Python 3.11+**
  * **FastAPI**: Para a construção da API.
  * **SQLAlchemy 2.0**: Para o ORM e comunicação com o banco de dados.
  * **Pydantic**: Para validação e serialização de dados.
  * **Alembic**: Para controle de versionamento e migrações do banco de dados.
  * **PostgreSQL**: Como banco de dados.
  * **Docker e Docker Compose**: Para a conteinerização do banco de dados.
  * **Uvicorn**: Como servidor ASGI.

## Funcionalidades Implementadas

### Atletas

  * Criação, busca, atualização e exclusão de atletas.
  * **Busca com filtros**: É possível consultar atletas por `nome` e `cpf` através de query parameters.
  * **Resposta customizada**: A listagem de atletas retorna apenas os campos `nome`, `categoria` e `centro_treinamento`.
  * **Tratamento de erro de integridade**: A API retorna um erro `HTTP 303 See Other` com uma mensagem específica caso haja uma tentativa de cadastrar um atleta com um CPF já existente.
  * **Paginação**: A rota de listagem de atletas é paginada, utilizando `limit` e `offset`.

### Categorias

  * Criação e busca de categorias.

### Centros de Treinamento

  * Criação e busca de centros de treinamento.

## Como Executar o Projeto

### Pré-requisitos

  * Python 3.11 ou superior
  * Docker e Docker Compose

### Passos para Execução

1.  **Clone o repositório:**

    ```bash
    git clone <url-do-seu-repositorio>
    cd <nome-do-repositorio>
    ```

2.  **Crie e ative um ambiente virtual:**

    ```bash
    python -m venv venv
    source venv/bin/activate  # No Windows: venv\Scripts\activate
    ```

3.  **Instale as dependências:**

    ```bash
    pip install -r requirements.txt
    ```

4.  **Inicie o banco de dados com Docker:**

    ```bash
    docker-compose up -d
    ```

5.  **Aplique as migrações no banco de dados:**

    ```bash
    make run-migrations
    ```

      * Para criar novas migrações, utilize o comando:
        ```bash
        make create-migrations d="sua mensagem de migração"
        ```

6.  **Execute a aplicação:**

    ```bash
    make run
    ```

7.  **Acesse a documentação interativa:**
    Abra seu navegador e acesse: [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

## Estrutura de Endpoints

  * `POST /atletas/`: Cria um novo atleta.
  * `GET /atletas/`: Lista todos os atletas com filtros e paginação.
  * `GET /atletas/{id}`: Busca um atleta pelo ID.
  * `PATCH /atletas/{id}`: Atualiza os dados de um atleta (nome e idade).
  * `DELETE /atletas/{id}`: Remove um atleta.
  * `POST /categorias/`: Cria uma nova categoria.
  * `GET /categorias/`: Lista todas as categorias.
  * `GET /categorias/{id}`: Busca uma categoria pelo ID.
  * `POST /centros_treinamento/`: Cria um novo centro de treinamento.
  * `GET /centros_treinamento/`: Lista todos os centros de treinamento.
  * `GET /centros_treinamento/{id}`: Busca um centro de treinamento pelo ID.