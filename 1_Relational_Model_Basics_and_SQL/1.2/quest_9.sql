# Вывести название и цену тех книг, цены которых меньше 600 рублей.
SELECT title,
       price
  FROM book
 WHERE price < 600;

# Вывести название, автора  и стоимость (цена умножить на количество) тех книг,
# стоимость которых больше 4000 рублей
SELECT title,
       author,
       price
  FROM book
 WHERE price * amount > 4000;

# Вывести автора, название  и цены тех книг, количество которых меньше 10.
SELECT author,
       title,
       price
  FROM book
 WHERE amount < 10;
