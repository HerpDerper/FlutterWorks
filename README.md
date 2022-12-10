# Практическая работа 5

Цель работы: Реализовать восстановление данных после закрытия приложения. Если есть данные в SharedPreferences открыть 2 экран, если данных нет, то открыть 1 экран. Так же реализовать восстановление темы приложения.

Ход работы:
Создаем метод для инициализации SharedPreferences/\
![image](https://user-images.githubusercontent.com/82903497/206857617-e5d822ed-4069-4aff-b654-9d0d8d2d0d2d.png)\
Создаем методы для добавления данных в SharedPreferences и получения данных из SharedPreferences.\
![image](https://user-images.githubusercontent.com/82903497/206857627-7140b3c2-2d61-41d0-804a-d5b7e04c5c69.png)\
Добавляем метод, который проверяем наличия данных в SharedPreferences и перенаправляет на другой экран при инициализации.\
![image](https://user-images.githubusercontent.com/82903497/206857641-d3c6a4ed-a711-42eb-a617-20e0905f93d2.png)\
Создаем кнопки для смены темы и перехода на другой экран с передачей данных.\
![image](https://user-images.githubusercontent.com/82903497/206857648-7f8f0faf-3481-4c02-8879-13d5ae260b8f.png)\
Создаем класс ScreenPage, который принимает в себя параметры brightness и text.\
![image](https://user-images.githubusercontent.com/82903497/206857659-177364a0-d7b5-44da-93a7-206364428622.png)\
Создаем методы инициализации и очистки SharedPreferences. А также создаем макет окна.\
![image](https://user-images.githubusercontent.com/82903497/206857675-73e54468-1508-4798-b114-fdfe28036121.png)\
Проверяем результат первого окна.\
![image](https://user-images.githubusercontent.com/82903497/206857682-14dd3bb2-08d6-42a8-8e88-d6814341f8df.png)\
Проверяем результат второго окна.\
![image](https://user-images.githubusercontent.com/82903497/206857697-1d3caec6-68f3-4df4-863a-adaf73320599.png)\
Вывод: В процессе выполнения данной практической работы был восстановление данных после закрытия приложения, с использование SharedPreferences.
