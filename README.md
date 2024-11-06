<h1 align="center">Symfony6.4-WebServer-Crud</h1>

## Table of Contents

- [About](#about)
- [Getting Started](#getting_started)

## About <a name="about"></a>

Проект представляет собой веб-приложение для управления пользователями, разработанное с использованием фреймворка Symfony 6.4. Приложение реализует полный функционал CRUD для управления пользовательскими данными. В качестве базы данных используется PostgreSQL, а для управления схемой базы данных используются миграции, что упрощает поддержание структуры данных в актуальном состоянии.

## Getting Started <a name="getting_started"></a>

### Установка

1. Следуйте официальной инструкции для [установки Symfony](https://symfony.com/doc/6.4/setup.html).
   
2. Настройте базу данных, отредактировав файл `.env`:

    ```env
    DATABASE_URL="postgresql://username:password@127.0.0.1:5432/database_name?serverVersion=13&charset=utf8"
    ```
   
    Замените `username`, `password`, и `database_name` на соответствующие параметры для вашей базы данных PostgreSQL.

3. Убедитесь, что настройки PostgreSQL также указаны в `docker-compose.yaml`:

    ```yaml
    POSTGRES_DB: ${POSTGRES_DB:-app}
    POSTGRES_PASSWORD: ${POSTGRES_PASSWORD:-admin1}
    POSTGRES_USER: ${POSTGRES_USER:-admin}
    ```
    
4. Для установки PostgreSQL через Docker выполните команду:

    ```bash
    make postgres
    ```

### Миграции

Для применения миграций и создания необходимых таблиц выполните:

```bash
bin/console doctrine:migrations:migrate
