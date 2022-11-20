# Практическая работа 3

Цель работы: Реализовать регистрацию и авторизацию пользователя, реализовать хеширование пароля.\

Ход работы:
Создаем абстрактный класс, в котором будут находится методы для авторизации и регистрации.  \
![image](https://user-images.githubusercontent.com/82903497/202916312-cab4df58-4a00-42ff-b522-743bc3dc5c16.png)\
Создаем класс, который является наследником абстрактного класса, переопределяем в нем методы, также в данном классе создаем хеширование паролей.\
![image](https://user-images.githubusercontent.com/82903497/202916327-4c9d3e2d-befd-4a39-87dd-b20b27680402.png)\
Создаем еще один абстрактный класс.\
![image](https://user-images.githubusercontent.com/82903497/202916333-105eaad4-dc03-4991-ae32-87ea41545c2c.png)\
Создаем новый класс-наследник.\
![image](https://user-images.githubusercontent.com/82903497/202916346-2017d3ec-79be-4387-8d13-5f1617a7dfcd.png)\
Изменяем класс RoleEntity.\
![image](https://user-images.githubusercontent.com/82903497/202916353-0d0bc087-e8b0-40e7-a2b3-5852bb107139.png)\
Создаем классы для окон авторизации, регистрации, админа и пользователя.\
![image](https://user-images.githubusercontent.com/82903497/202916362-4478bfc9-94fb-4bef-8bc1-8ef49cc3ffc0.png)\
Запускаем приложение и видим окно авторизации.\
![image](https://user-images.githubusercontent.com/82903497/202916369-1684ba52-783f-4649-a7e3-5c67db21a442.png)\
Переходим в окно регистрации.\
![image](https://user-images.githubusercontent.com/82903497/202916380-bc37cb78-267e-4187-8fcf-c4182ed1c7d4.png)\
Заходи за админа.\
![image](https://user-images.githubusercontent.com/82903497/202916391-25b03f46-e7d9-40db-9f93-5eb9ab90cde5.png)\
Заходим за пользователя.\
![image](https://user-images.githubusercontent.com/82903497/202916401-f137379b-64e5-4af1-9060-1b33ed0b3046.png)\
Вывод: В процессе выполнения данной практической работы была реализована регистрация и авторизация пользователя, реализовано хеширование пароля.
