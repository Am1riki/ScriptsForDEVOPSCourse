#!/bin/bash
source = ("/opt/tomcat/files" "/opt/tomcat/mysql")
backup_dest = "/home/backups"
curdate = $(date +'%Y-%m-%d')

create_backup() {
    echo "Создание резервной копии директорий ${source_directories[@]} в архив $backup_path..."
    tar -czf "$backup_path" "${source_directories[@]}"
    echo "Резервная копия создана: $backup_path"
}

setup_cron_job() {
    cron_job="0 0 * * 0 /bin/bash $(realpath $0) create_backup"
    (crontab -l 2>/dev/null | grep -v -F "$cron_job" ; echo "$cron_job") | crontab -
    echo "Задание для cron установлено: каждое воскресенье в 00:00"
}

if [ "$1" == "create_backup" ]; then
    create_backup
else
    setup_cron_job
fi