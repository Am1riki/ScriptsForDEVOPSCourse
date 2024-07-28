#!/bin/bash
apt update
upgradable=$(apt list --upgradable 2>/dev/null | grep -v "Listing..." | wc -l)
if [ "$upgradable" -eq 0 ]; then
    echo "Нет доступных обновлений."
else
    echo "Доступно $upgradable обновлений. Обновление системы..."
    apt upgrade -y
    echo "Система обновлена успешно!"
fi