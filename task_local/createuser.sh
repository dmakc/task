#!/bin/bash
# Скрипт запуска команды создания пользователя

# Запускаем команду создания пользователя
docker compose -f docker-compose.yml exec backend python manage.py createsuperuser