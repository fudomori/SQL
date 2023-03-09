# Для каждой книги из таблицы book вычислим налог на добавленную стоимость (имя столбца tax),
# который включен в цену и составляет k = 18%,  а также цену книги (price_tax) без него.
SELECT title,
       price,
       ROUND((price * 18 / 100) / (1 + 18 / 100), 2) AS tax,
       ROUND(price / (1 + 18 / 100), 2)              AS price_tax
  FROM book;

# В конце года цену всех книг на складе пересчитывают – снижают ее на 30%.
# Написать SQL запрос, который из таблицы book выбирает названия,
# авторов, количества и вычисляет новые цены книг.
# Столбец с новой ценой назвать new_price, цену округлить до 2-х знаков после запятой.
SELECT title,
       author,
       amount,
       ROUND(price - price * 30 / 100, 2) AS new_price
  FROM book;
