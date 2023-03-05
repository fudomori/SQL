# Посчитать количество экземпляров книг на складе.
SELECT SUM(amount) AS количество
  FROM book;

# Посчитать общее количество экземпляров книг на складе и их стоимость .
SELECT SUM(amount)         AS количество,
       SUM(price * amount) AS стоимость
  FROM book;

# Вывести  цену самой дешевой книги, цену самой дорогой и среднюю цену уникальных книг на складе. Названия столбцов Минимальная_цена, Максимальная_цена, Средняя_цена соответственно. Среднюю цену округлить до двух знаков после запятой.
SELECT MIN(price)                    AS Минимальная_цена,
       MAX(price)                    AS Максимальная_цена,
       ROUND(AVG(DISTINCT price), 2) AS Средняя_цена
  FROM book;