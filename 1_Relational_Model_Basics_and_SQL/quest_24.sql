# Вывести информацию о тех книгах, количество которых меньше самого маленького среднего количества книг каждого автора.
SELECT title,
       author,
       amount,
       price
FROM book
WHERE amount < ALL (SELECT avg(amount)
                FROM book
                GROUP BY author);

# Вывести информацию о тех книгах, количество которых меньше самого большого среднего количества книг каждого автора.
SELECT title,
       author,
       amount,
       price
FROM book
WHERE amount < ANY (SELECT avg(amount)
                FROM book
                GROUP BY author);

# Вывести информацию о книгах(автор, название, цена), цена которых меньше самой большой из минимальных цен, вычисленных для каждого автора.
SELECT author,
       title,
       price
FROM book
WHERE price < ANY (SELECT min(price)
                   FROM book
                   GROUP BY author);