-- Формула НДС
SELECT title,
       price,
       ROUND((price * 18 / 100) / (1 + 18 / 100), 2) AS tax,
       ROUND(price / (1 + 18 / 100), 2)            AS price_tax
  FROM book;

-- Скидка на все книги 30%
SELECT title,
       author,
       amount,
       ROUND(price - price * 30 / 100, 2) AS new_price
  FROM book;
