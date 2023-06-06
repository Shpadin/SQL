create database DZ_5;

use DZ_5;


CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
SELECT *
FROM cars;

-- 1.	Создайте представление, в которое попадут автомобили стоимостью  до 25 000 долларов

CREATE VIEW cars1 AS 
SELECT * FROM Cars
WHERE cost < 25000;

SELECT *
FROM cars1;

-- 2. Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW) 
ALTER VIEW cars1 AS
SELECT * FROM Cars
WHERE cost < 30000;

SELECT *
FROM cars1;

-- 3. 	Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”

CREATE VIEW cars_2 AS
SELECT * FROM Cars
WHERE name = "Audi" OR name = "Skoda";

SELECT * FROM Cars_2;


DROP TABLE  if EXISTS trains;
CREATE TABLE trains
(
	id int primary key auto_increment,
    Trian_id INT,
    station VARCHAR(45),
    station_time TIME(0),
    time_to_next_station TIME(0)
    
);

INSERT  trains (Trian_id,station,station_time, time_to_next_station)
VALUES
	(110, "San Francisco", "10:00:00", "00:54:00"),
    (110, "Redwood City", "10:54:00", "00:08:00"),
    (110, "Palo Alto", "11:02:00", "10:33:00"),
    (110, "San Jose", "12:35:00","00:00:00"),
    (120, "San Francisco", "11:00:00", "01:49:00"),
    (120, "San  Alto", "12:49:00", "00:41:00"),
    (120, "San Jose", "13:30:00","00:00:00");
    
SELECT *
FROM trains;


SELECT 
	SUBTIME (
    LEAD(station_time) OVER (PARTITION BY Trian_id ORDER BY Trian_id), station_time
    )
AS time_to_next_station
FROM Trains;



                    