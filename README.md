# Task

Приложение для планирования своих задач.

## Описание проекта

Сайт создан для ведения списка задач.

## Стек технологии
![Python 3.9](https://img.shields.io/badge/Python-3.9-blue.svg) ![Django 3.2.3](https://img.shields.io/badge/Django-3.2.3-green.svg) ![djangorestframework 3.12.4](https://img.shields.io/badge/djangorestframework-3.12.4-green) ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-13.0-blue.svg) ![Nginx](https://img.shields.io/badge/nginx-1.22.1-green.svg) ![Docker](https://img.shields.io/badge/Docker-26.0.0-blue.svg)

## Как развернуть проект

1. Создать файл .env в корне проекта
```
touch .env
```

2. Ввести данные для переменных
```
POSTGRES_DB=<БазаДанных>
POSTGRES_USER=<имя пользователя>
POSTGRES_PASSWORD=<пароль>
DB_NAME=<имя БазыДанных>
DB_HOST=db
DB_PORT=5432
SECRET_KEY=<ключ Django>
DEBUG=<DEBUG True/False>
ALLOWED_HOSTS=<разрешенные хосты>
```

4. Запустить docker compose
```
cd task-local/
sudo docker compose -f docker-compose.yml up
```
5. Выполнить миграции, сбор статики
```
./run_app.sh
```
6. Создать суперпользователя
```
./createuser.sh
```

Для локального запуска тестов создайте виртуальное окружение, установите в него зависимости из backend/requirements.txt и запустите в корневой директории проекта `pytest`.

## Автор
[Давыдов Максим](https://github.com/dmakc)