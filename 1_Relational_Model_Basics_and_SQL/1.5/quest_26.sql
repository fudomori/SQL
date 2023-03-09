# Создать таблицу поставка (supply), которая имеет ту же структуру, что и таблиц book.
CREATE TABLE supply
(
	supply_id INT PRIMARY KEY AUTO_INCREMENT,
	title     VARCHAR(50),
	author    VARCHAR(30),
	price     DECIMAL(8, 2),
	amount    INT
);

# Занесите в таблицу supply четыре записи
INSERT INTO supply (title, author, price, amount)
VALUES ('Лирика', 'Пастернак Б.Л.', 518.99, 2),
       ('Черный человек', 'Есенин С.А.', 570.20, 6),
       ('Белая гвардия', 'Булгаков М.А.', 540.50, 7),
       ('Идиот', 'Достоевский Ф.М.', 360.80, 3);

# Занести все книги из таблицы supply в таблицу book.
INSERT INTO supply (title, author, price, amount)
SELECT title, author, price, amount
  FROM supply;
SELECT *
  FROM supply;

# Добавить из таблицы supply в таблицу book, все книги, кроме книг,
# написанных Булгаковым М.А. и Достоевским Ф.М.
INSERT INTO book (title, author, price, amount)
SELECT title, author, price, amount
  FROM supply
 WHERE author NOT IN ('Булгаков М.А.', 'Достоевский Ф.М.');
SELECT *
  FROM book;