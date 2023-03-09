# Занести из таблицы supply в таблицу book только те книги, названия которых отсутствуют в таблице book.
INSERT INTO book (title, author, price, amount)
SELECT title, author, price, amount
  FROM supply
 WHERE title NOT IN (SELECT title FROM book);

# Занести из таблицы supply в таблицу book только те книги, авторов которых нет в  book.
INSERT INTO book (title, author, price, amount)
SELECT title, author, price, amount
  FROM supply
 WHERE author NOT IN (SELECT DISTINCT author FROM book);