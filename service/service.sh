#!/usr/bin/env bash
set -euo pipefail

HTML_DIR="/opt/lab4-service/html"
PORT=8000

cd "$HTML_DIR"

echo "Запуск HTTP-сервера на порту $PORT от пользователя $(whoami)"
echo "Корневая директория: $HTML_DIR"

exec python3 -m http.server "$PORT" 2>&1
