﻿#language: ru

@tree

Функционал: Проверка добавления картинки в форму элемента справочника Товары

Как Тестировщик я хочу
проверить возможность создания нового товара и добавления к нему картинки 
чтобы убедиться в корректной работе    

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: добавление картинки товара
*Открытие справочника Товары и формы для создания нового товара
    И В командном интерфейсе я выбираю 'Товарные запасы' 'Товары'
    Тогда открылось окно 'Товары'
    И я нажимаю на кнопку с именем 'ФормаСоздать'
    Тогда открылось окно 'Товар (создание)'
* Заполнение основных реквизитов карточки номенклатуры
    И я нажимаю кнопку выбора у поля с именем "Родитель"
    Тогда открылось окно 'Товары'
    И в таблице "Список" я разворачиваю строку:
        | 'Наименование' |
        | 'Продукты'     |
    И в таблице "Список" я разворачиваю строку:
        | 'Наименование' |
        | 'Молочные'     |
    И в таблице "Список" я перехожу к строке:
        | 'Наименование' |
        | 'Молочные'     |
    И я нажимаю на кнопку с именем 'ФормаВыбрать'
    Тогда открылось окно 'Товар (создание) *'
    И Я запоминаю в переменную "НаименованиеТовара" значение "Торт Черный Лотос"
    И в поле с именем 'Наименование' я ввожу текст '$НаименованиеТовара$'
    И Я запоминаю в переменную "АртикулТовара" значение "ТортЧерныйЛотос"
    И в поле с именем 'Артикул' я ввожу текст '$АртикулТовара$'
    И я нажимаю кнопку выбора у поля с именем "Поставщик"
    Тогда открылось окно 'Контрагенты'
    И в таблице "Список" я перехожу к строке:
        | 'Код'       | 'Наименование'       |
        | '000000013' | 'Магазин "Продукты"' |
    И я нажимаю на кнопку с именем 'ФормаВыбрать'
    Тогда открылось окно 'Товар (создание) *'
    И в поле с именем 'ВТ_Вес' я ввожу текст '2,000'
    И в поле с именем 'ШтрихКод' я ввожу текст '777888999000'
* Сохранение нового товара (пока без картинки
    И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка записи - поле Код не пустое
    И поле с именем "Код" заполнено
    И я запоминаю значение поля с именем 'Код' как 'КодТовара'
* Добавление файла картинки
    И В текущем окне я нажимаю кнопку командного интерфейса 'Файлы'
    И я нажимаю на кнопку с именем 'Создать'
    Тогда открылось окно 'Файл (создание)'
    И я выбираю файл 'C:\Users\EPitirimova\Documents\GitHub\TestQA\Final Task\Task 1\lotus2.jpg'
    И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
    И я закрываю текущее окно
* Запоминаем код добавленной картинки для будущего выбора
    Если в таблице "Список" количество строк "больше" 1 Тогда
        И в таблице "Список" я перехожу к последней строке
    Иначе  в таблице "Список" я перехожу к первой строке    
    А я активизирую поле с именем "СписокКод"
    И я запоминаю значение поля с именем 'СписокКод' таблицы 'Список' как 'КодКартинки'
* Выбираем добавленную картинку к созданной номенклатуре
    И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
    И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
    Тогда открылось окно 'Файлы'
    И в таблице "Список" я перехожу к строке:
        | 'Код'           | 'Наименование' |
        | '$КодКартинки$' | 'lotus2.jpg'   |
    И я нажимаю на кнопку с именем 'ФормаВыбрать'
    И я нажимаю на кнопку с именем 'ФормаЗаписать'
    Тогда элемент формы с именем "ФайлКартинки" стал равен 'lotus2.jpg'
    И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
* Проверяем что номенклатура добавлена
    И таблица "Список" содержит строки:
        | 'Наименование'         | 'Код'         | 'Поставщик' | 'Артикул'         | 'Цвет' |
        | '$НаименованиеТовара$' | '$КодТовара$' | '*'         | '$АртикулТовара$' | '*'    |
    
        
    
        
    
        
        
                
                
