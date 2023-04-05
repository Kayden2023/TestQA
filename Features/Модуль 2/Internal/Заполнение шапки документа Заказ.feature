﻿#language: ru
@ExportScenarios
@IgnoreOnCIMainBuild

@tree

Функционал: Заполнение шапки документа Заказ

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: заполнение шапки документа Заказ
* Заполнение организации
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
* Заполнение покупателя
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000014' | 'Магазин "Бытовая техника"'  |
	//И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
* Проверка заполнения вида цен в зависимости от выбранного покупателя
	Если элемент формы с именем "Покупатель" имеет значение 'Магазин "Бытовая техника"' тогда
		И элемент формы 'Вид цен' стал равен 'Мелкооптовая'
* Заполнение склада		
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
* Заполнение валюты взаиморасчетов
		И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'

