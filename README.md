# SQL
Базы данных SQL


Урок 3. SQL – выборка данных, сортировка, агрегатные функции
Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания
Выведите 5 максимальных заработных плат (saraly)
Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.
Найдите количество специальностей
Выведите специальности, у которых средний возраст сотрудников меньше 30 лет
---------
Урок 4. SQL – работа с несколькими таблицами
Табличка:
https://drive.google.com/file/d/1TZzW8ZlDdvIfDC9C46bUeILey6opQjdu/view?usp=share_link

Используя JOIN-ы, выполните следующие операции:
Вывести всех котиков по магазинам по id (условие соединения shops.id = cats.shops_id)

Вывести магазин, в котором продается кот “Мурзик” (попробуйте выполнить 2 способами)

Вывести магазины, в которых НЕ продаются коты “Мурзик” и “Zuza”

Табличка (после слов “Последнее задание, таблица:”):
https://drive.google.com/file/d/1TZzW8ZlDdvIfDC9C46bUeILey6opQjdu/view?usp=share_link
Вывести название и цену для всех анализов, которые продавались 5 февраля 2020 и всю следующую неделю.
Есть таблица анализов Analysis:
an_id — ID анализа;
an_name — название анализа;
an_cost — себестоимость анализа;
an_price — розничная цена анализа;
an_group — группа анализов.
Есть таблица групп анализов Groups:
gr_id — ID группы;
gr_name — название группы;
gr_temp — температурный режим хранения.
Есть таблица заказов Orders:
ord_id — ID заказа;
ord_datetime — дата и время заказа;
ord_an — ID анализа.
