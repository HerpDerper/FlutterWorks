# Практическая работа 2

Цель работы: Реализовать класс который отвечает за базу данных.
Реализовать следующие функции:
- init - инициализация базы данных для всех платформ
- onCreateTable - создание таблиц 
- onUpdateTable - обновление таблиц
- onInitTable - заполнение таблиц данными
- onDropDataBase - удаление базы данных
.

Ход работы:\
Создаем схему базы данных.\
![image](https://user-images.githubusercontent.com/82903497/201571831-5e79538e-170c-4e48-b09e-11e66a5914b2.png)\
Добавляем зависимости.\
![image](https://user-images.githubusercontent.com/82903497/201571856-0f29c1fc-d738-493e-bf10-c1230fcbcd8f.png)\
Создаем модели.\
![image](https://user-images.githubusercontent.com/82903497/201571903-305a6a28-15be-47ff-b7fd-322a21deb4a6.png)\
Пример модели.\
![image](https://user-images.githubusercontent.com/82903497/201571921-f04d2d0f-db14-4823-a526-e938fdeff72a.png)\
Создаем Entities.\
![image](https://user-images.githubusercontent.com/82903497/201571962-f111209d-5b77-4f7d-9878-b09a37fd2242.png)\
Пример Entity.\
![image](https://user-images.githubusercontent.com/82903497/201571981-1b10e222-91db-4d8b-b717-c568dc2bdba7.png)\
Создаем класс для создания таблиц в базе данных.\
![image](https://user-images.githubusercontent.com/82903497/201572002-46f5f3a5-d999-49d5-b3cb-d6481650af56.png)
Создаем класс для управления базой данных.\
Добавляем в него функцию создания таблицы.\
![image](https://user-images.githubusercontent.com/82903497/201572024-3bd61a90-bfd9-49a1-9af0-3ab66d7ffa97.png)\
Добавляем в него функцию обновления таблицы.\
![image](https://user-images.githubusercontent.com/82903497/201572042-5088e703-186d-464e-8f29-e4fe8a12729d.png)\
Добавляем в него функцию удаления базы данных.\
![image](https://user-images.githubusercontent.com/82903497/201572070-d9bc6900-5426-4fc5-a949-842f6b3bce3a.png)\
Добавляем в него функцию добавления данных в таблицы, при создании таблицы.\
![image](https://user-images.githubusercontent.com/82903497/201572089-0cbe8609-702f-47e1-99a1-69963fd8ae60.png)\
Смотрим данные в таблице.\
![image](https://user-images.githubusercontent.com/82903497/201572120-0744d9ca-ebf4-4f8b-8377-8791977da6ce.png)\
Вывод: В процессе выполнения данной практической работы была создана база данных для информационной системы склад, были реализованы девять моделей для взаимодействия с базой данных, созданы функции init, onCreateTable, onUpdateTable, onInitTable, onDropDataBase.
