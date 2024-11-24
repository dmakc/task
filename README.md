# Task

Приложение для планирования своих задач.

## Описание проекта

Сайт создан для ведения списка задач.

## Иформации об API:

Примеры запросов и информацию об API можно найти в Redoc по ссылке: [/api/docs/]

## Стек технологии
![Python 3.9](https://img.shields.io/badge/Python-3.9-blue.svg) ![Django 3.2.3](https://img.shields.io/badge/Django-3.2.3-green.svg) ![djangorestframework 3.12.4](https://img.shields.io/badge/djangorestframework-3.12.4-green) ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-13.0-blue.svg) ![Nginx](https://img.shields.io/badge/nginx-1.22.1-green.svg) ![Docker](https://img.shields.io/badge/Docker-26.0.0-blue.svg)

## Как развернуть проект

Настроить запуск проекта Foodgram в контейнерах и CI/CD с помощью GitHub Actions

1. Клонировать репозиторий git@github.com:dmakc/task.git
```
git clone git@github.com:dmakc/task.git
```

2. Создать файл .env в корне проекта
```
touch .env
```

3. Ввести данные для переменных
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
sudo docker compose -f docker-compose.production.yml up
```
5. Выполнить миграции, сбор статики
```
sudo docker compose -f docker-compose.production.yml exec backend python manage.py makemigrations
sudo docker compose -f docker-compose.production.yml exec backend python manage.py migrate
sudo docker compose -f docker-compose.production.yml exec backend python manage.py collectstatic
```
6. Создать суперпользователя
```
sudo docker compose -f docker-compose.production.yml exec backend python manage.py createsuperuser
```

Для локального запуска тестов создайте виртуальное окружение, установите в него зависимости из backend/requirements.txt и запустите в корневой директории проекта `pytest`.

## Автор
[Давыдов Максим](https://github.com/dmakc)