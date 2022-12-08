# Практическая работа 4

Цель работы: Реализовать счетчик при нажатии на кнопку “+” осуществляет увеличение счетчика, при нажатии на кнопку - осуществляться уменьшение счетчика.

Ход работы:
Создаем класс CounterState для счетчика.\
![image](https://user-images.githubusercontent.com/82903497/206401335-07027528-eee5-4a95-9ab7-0fc1dd639e05.png)\
Создаем класс CounterCubit для изменения счетчика.\
![image](https://user-images.githubusercontent.com/82903497/206401406-23768f1f-c55d-4166-b462-a9320c6efd43.png)
Создаем кнопки для изменения счетчика.\
![image](https://user-images.githubusercontent.com/82903497/206401436-ac113d4e-8563-4416-bf9e-8aff42492323.png)\
Создаем новый класс ThemeState для темы.\
![image](https://user-images.githubusercontent.com/82903497/206401505-c5d95b02-f4eb-4f31-89d7-19d17ddcecdc.png)\
Создаем класс ThemeCubit для изменения темы.\
![image](https://user-images.githubusercontent.com/82903497/206401564-c54a8722-439b-4c0b-a3b1-4ab9c57b7667.png)\
Создаем кнопку для изменения темы.\
![image](https://user-images.githubusercontent.com/82903497/206401619-50d6e636-1f77-4bd8-b7ff-6a49a648e20a.png)\
Создаем класс ThemeState для записи истории нажатий на кнопки изменения счетчика.\
![image](https://user-images.githubusercontent.com/82903497/206401657-7596eae4-5915-4269-8e89-f827c35a6b2a.png)\
Создаем класс ThemeCubit для обновления записей истории нажатий на кнопки изменения счетчика.\
![image](https://user-images.githubusercontent.com/82903497/206401692-afd88d08-64c0-4255-bea7-f8dd2bc59e02.png)\
Выводим список из записей при помощи Column, для прокрутки записей используем SingleChildScrollView.\
![image](https://user-images.githubusercontent.com/82903497/206401750-976943db-ab30-4ad8-8637-93f8e1764e2a.png)\
Проверяем результат.\
![image](https://user-images.githubusercontent.com/82903497/206401782-1dca3866-0f79-41aa-8ca0-abd4e6606b6b.png)\Вывод: В процессе выполнения данной практической работы был реализован счетчик нажатий, изменение темы приложения, а также запись истории нажатий, с использование Cubit.
