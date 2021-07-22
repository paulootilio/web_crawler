Sobre
========
web_crawler é uma aplicação de rastreamento e raspagem da web de alto nível, usada para rastrear sites e extrair dados estruturados de suas páginas.

<!-- Requisitos -->
## :books: Requisitos
- Ter [**Git**](https://git-scm.com/) para clonar o projeto.
- Ter [**Docker**](https://www.docker.com/) para rodar o projeto.

<!-- Começando -->
## :gear: Começando

instruções sobre como configurar o projeto localmente.
```bash
# Entrar no diretório da aplicação:
  $ cd web_crawler

  # Subir containers:
  $ docker-compose up -d

  # Criar o banco e rodar as migrations:
  $ docker-compose run myapp bundle exec rake db:create db:migrate

  # Rodar a aplicação:
  $ docker-compose up
```
Acessar aplicação: [**localhost:5000**](http://localhost:5000/)

Feito por Paulo Otilio 👋🏻 [Get in touch!](https://github.com/paulootilio)