# Вывести информацию о книгах тех авторов, общее количество экземпляров книг которых не менее 12.
SELECT title,
       author,
       amount,
       price
  FROM book
 WHERE author IN (SELECT author
                    FROM book
                   GROUP BY author
                  HAVING SUM(amount) >= 12);

# Вывести информацию (автора, книгу и количество) о тех книгах, количество экземпляров которых в таблице book не дублируется.
SELECT author,
       title,
       amount
  FROM book
 WHERE amount IN (SELECT amount
                    FROM book
                   GROUP BY amount
#                   HAVING SUM(amount) = amount
                  HAVING COUNT(amount) = 1);
