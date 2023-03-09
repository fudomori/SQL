# Создать новую таблицу back_payment, куда внести информацию о неоплаченных штрафах (Фамилию и инициалы
# водителя, номер машины, нарушение, сумму штрафа  и  дату нарушения) из таблицы fine.
CREATE TABLE back_payment
SELECT name,
       number_plate,
       violation,
       sum_fine,
       date_violation
FROM fine
WHERE date_payment IS NULL;

# Удалить из таблицы fine информацию о нарушениях, совершенных раньше 1 февраля 2020 года.
DELETE FROM fine
WHERE date_violation < '2020-02-01';