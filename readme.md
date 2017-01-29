##Тестовое задание.
node.js, база данных mysql
1. таблица user - поля: (firstName, lastName, image(binary), pdf(binary))
2. сделать веб сервис в который подается firstName
3. далее функция находит пользователя в базе по firstName
a. генерит pdf файл вида firstName + lastName + image
4. сохраняет pdf файл в поле pdf базы данных- возвращает пользователю результат в виде JSON (true/false).

## Installation
1) База данных с примерами image(jpg, png, gif) в файле дампа Dump.sql

2) Для работы программы необходимо установить программу imagemagick:
https://www.imagemagick.org/download/binaries/ImageMagick-7.0.4-6-Q16-x64-static.exe
(устанавливать с записью в переменную среду)
3) Внизу страницы указано как проверить правильность установки и решить возможные проблемы
https://www.imagemagick.org/script/download.php#windows
4) Переименовать файл исполняемый файл программы magick.exe в convert.exe
5) Создать папку "tempFile" в корне диска, где запускается проект

## Configuration (database)
server.js

    host: 'localhost',
    user: 'root',
    password : 'root',
    port : 3306, //port mysql
    database:'nyblecraft'

## Usage
После запуска server.js ввести в адресную строку
http://localhost:3000/api/user


##Information
Конвертация производиться если нет pdf файла в папке "tempFile" либо в базе данных.
Имя файла в формате 

    'firstName' + 'lastName' + '.pdf'
        
Пользователю возвращается ответ JSON(true/false). На его основе выдаётся ответ 

    conversion complete
    
либо

    conversion not complete
    
Ответ JSON избыточен, т.к. возможно эти сообщения выводить исходя из кода состояния HTTP.
Cинхронность и асинхронность кода можно настроить исходя из условий performance.
Код не проверялся на кириллице. Также отсутствуют тесты и оформление view
(при необходимости можно доработать).