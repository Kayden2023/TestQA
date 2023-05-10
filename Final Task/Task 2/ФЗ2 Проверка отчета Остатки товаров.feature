﻿#language: ru

@tree

Функционал: Финальное задание 2 (проверка отчета Остатки товаров)

Как Администратор я хочу
проверить отчет остатки товаров 
чтобы убедиться в корректной работе отчета   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: финальное задание 2 (проверка отчета Остатки товаров)
    И В командном интерфейсе я выбираю 'Товарные запасы' 'Остатки товаров'
    И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
    И в таблице "СписокНастроек" я перехожу к строке
            | 'Представление' |
            | 'Основной' |
    И в таблице "СписокНастроек" я выбираю текущую строку
    Тогда открылось окно 'Остатки товаров'
    И я нажимаю на кнопку с именем 'ФормаСформировать'
    И я жду когда в табличном документе "Результат" заполнится ячейка "R28C6" в течение 10 секунд
    И в табличном документе 'Результат' я перехожу к ячейке "R28C6"
    И в табличном документе "Результат" ячейка с адресом "R28C6" равна "4 727,00" по шаблону
    Дано Табличный документ "Результат" равен макету "ОтчетОстаткиТоваров" по шаблону
        
        
    


