# Удалить из таблицы supply все книги, названия которых есть в таблице book.
DELETE
  FROM supply
 WHERE title IN (SELECT title
                   FROM book);

# Удалить из таблицы supply книги тех авторов,
# общее количество экземпляров книг которых в таблице book превышает 10.
DELETE
  FROM supply
 WHERE author IN (SELECT author
                    FROM book
                   WHERE amount >= 10
                   GROUP BY author)