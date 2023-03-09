# Водители оплачивают свои штрафы. В таблице payment занесены даты их оплаты:
# в таблицу fine занести дату оплаты соответствующего штрафа из таблицы payment;
# уменьшить начисленный штраф в таблице fine в два раза
# (только для тех штрафов, информация о которых занесена в таблицу payment),
# если оплата произведена не позднее 20 дней со дня нарушения.
CREATE TABLE payment
(
	payment_id     INT AUTO_INCREMENT PRIMARY KEY,
	name           VARCHAR(30) NULL,
	number_plate   VARCHAR(6)  NULL,
	violation      VARCHAR(50) NULL,
	date_violation DATE        NULL,
	date_payment   DATE        NULL
);

INSERT INTO payment
	(name, number_plate, violation, date_violation, date_payment)
VALUES ('Яковлев Г.Р.', 'М701АА', 'Превышение скорости (от 20 до 40)', '2020-01-12', '2020-01-22'),
       ('Баранов П.Е.', 'Р523ВТ', 'Превышение скорости (от 40 до 60)', '2020-02-14', '2020-03-06'),
       ('Яковлев Г.Р.', 'Т330ТТ', 'Проезд на запрещающий сигнал', '2020-03-03', '2020-03-23');


UPDATE fine f, payment p
   SET f.date_payment = p.date_payment,
       f.sum_fine     = IF(
				       f.violation = p.violation AND DATEDIFF(p.date_payment, f.date_violation) < 20,
				       f.sum_fine / 2,
				       f.sum_fine)
 WHERE f.name = p.name
   AND f.number_plate = p.number_plate
   AND f.violation = p.violation
   AND f.date_payment IS NULL;

SELECT *
  FROM fine;