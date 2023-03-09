# Уменьшить на 30% цену книг в таблице book.
UPDATE book
   SET price = price * 0.7;

# Уменьшить на 30% цену тех книг в таблице book, количество которых меньше 5.
UPDATE book
   SET price = price * 0.7
 WHERE amount < 5;

# Уменьшить на 10% цену тех книг в таблице book,
# количество которых принадлежит интервалу от 5 до 10, включая границы.
UPDATE book
   SET price = price * 0.9
 WHERE amount BETWEEN 5 AND 10;