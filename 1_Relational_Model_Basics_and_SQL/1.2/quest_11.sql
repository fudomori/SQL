# Выбрать названия и количества тех книг, количество которых от 5 до 14 включительно.
SELECT author,
       amount
  FROM book
 WHERE amount BETWEEN 5 AND 14;
# WHERE amount >= 5 AND amount <=14;

# Выбрать названия и цены книг, написанных Булгаковым или Достоевским.
SELECT title,
       price
  FROM book
 WHERE author IN ('Булгаков М.А.', 'Достоевский Ф.М.');
# WHERE author = 'Булгаков М.А.' OR author = 'Достоевский Ф.М.';

# Вывести название и авторов тех книг, цены которых принадлежат интервалу от 540.50 до 800 (включая границы),
# а количество или 2, или 3, или 5, или 7 .
SELECT title,
       author
  FROM book
 WHERE (price BETWEEN 540.50 AND 800)
   AND amount IN (2, 3, 5, 7);