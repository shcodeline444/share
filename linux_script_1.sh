#!/bin/bash

# Задача 1: Записываем текущую дату и время в переменную
current_datetime=$(date +"%Y-%m-%d %H:%M:%S")

# Задача 2: Получаем число активных процессов с помощью команды 'ps' и 'wc'
active_processes=$(ps -U "$USER" | wc -l)

# Задача 3: Получаем список процессов, запущенных текущим пользователем
user_processes=$(ps -U "$USER" -o pid,cmd)

# Задача 4: Записываем результаты в текстовый файл
echo "Текущая дата и время: $current_datetime" > system_info.txt
echo "Число активных процессов: $active_processes" >> system_info.txt
echo "Процессы текущего пользователя:" >> system_info.txt
echo "$user_processes" >> system_info.txt

echo "Информация записана в файл system_info.txt"
