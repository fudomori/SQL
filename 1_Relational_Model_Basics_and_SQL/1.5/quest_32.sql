# Создать таблицу заказ (ordering), куда включить авторов и названия тех книг, количество экземпляров
# которых в таблице book меньше 4. Для всех книг указать одинаковое количество экземпляров 5.
CREATE TABLE ordering AS
SELECT author, title, 5 AS amount
  FROM book
 WHERE amount < 4;

# Создать таблицу заказ (ordering), куда включить авторов и названия тех книг, количество экземпляров
# которых в таблице book меньше 4. Для всех книг указать одинаковое значение - среднее количество
# экземпляров книг в таблице book.
CREATE TABLE ordering AS
SELECT author,
       title,
       (SELECT AVG(amount) FROM book) AS amount
  FROM book
 WHERE amount < 4;

# Создать таблицу заказ (ordering), куда включить авторов и названия тех книг, количество экземпляров
# которых в таблице book меньше среднего количества экземпляров книг в таблице book. В таблицу включить
# столбец   amount, в котором для всех книг указать одинаковое значение - среднее количество экземпляров
# книг в таблице book.
CREATE TABLE ordering
SELECT author,
       title,
       ROUND((SELECT AVG(amount) FROM book),
             1) AS amount
  FROM book
 WHERE amount < (SELECT AVG(amount) FROM book);