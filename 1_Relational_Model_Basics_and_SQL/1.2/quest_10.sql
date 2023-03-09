# Вывести название, автора и цену тех книг, которые написал Булгаков, ценой больше 600 рублей
SELECT title,
       author,
       price
  FROM book
 WHERE price > 600
   AND author = 'Булгаков М.А.';

# Вывести название, цену  тех книг, которые написал Булгаков или Есенин, ценой больше 600 рублей
SELECT title,
       author,
       price
  FROM book
 WHERE (author = 'Булгаков М.А.' OR author = 'Есенин С.А.')
   AND price > 600;

# Вывести название, автора,  цену  и количество всех книг, цена которых меньше 500 или больше 600,
# а стоимость всех экземпляров этих книг больше или равна 5000.
SELECT title,
       author,
       price,
       amount
  FROM book
 WHERE (price < 500 OR price > 600)
   AND price * amount >= 5000;
