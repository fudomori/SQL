# Выбрать различных авторов, книги которых хранятся в таблице book.
SELECT DISTINCT author
  FROM book;
# DISTINCT работает с данными из столбца, пишется после SELECT;

# Другой способ – использование оператора GROUP BY
SELECT author
  FROM book
 GROUP BY author;
# GROUP BY работает с данными из строк целевого столбца, пишется после FROM.

# Отобрать различные (уникальные) элементы столбца amount таблицы book.
SELECT DISTINCT amount
  FROM book;