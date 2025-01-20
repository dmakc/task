#!/bin/bash
# Скрипт для выполнения миграции и сборки статики в Django

# Запускаем миграцию
docker compose -f docker-compose.yml exec backend python manage.py migrate

# Собираем статические файлы
docker compose -f docker-compose.yml exec backend python manage.py collectstatic --noinput

# Выводим сообщение об успешном выполнении
echo "Проект запущен, миграции применены, статические файлы собраны!"