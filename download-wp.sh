#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

DESTINATION_PATH="./html/wp1"

echo "Скачивание WordPress..."
wget https://wordpress.org/latest.zip -O /tmp/latest.zip

echo "Разархивирование WordPress..."
unzip /tmp/latest.zip -d /tmp

echo "Перемещение файлов WordPress в ${DESTINATION_PATH}..."
mv /tmp/wordpress/* "${DESTINATION_PATH}"

echo "Очистка временных файлов..."
rm /tmp/latest.zip
rm -rf /tmp/wordpress

chmod -R 755 "${DESTINATION_PATH}"

echo "WordPress успешно установлен в ${DESTINATION_PATH}"

