# Вывести фамилию, номер машины и нарушение только для тех водителей, которые на одной машине нарушили одно
# и то же правило   два и более раз. При этом учитывать все нарушения, независимо от того оплачены они или
# нет. Информацию отсортировать в алфавитном порядке, сначала по фамилии водителя, потом по номеру машины
# и, наконец, по нарушению.
SELECT name,
       number_plate,
       violation
  FROM fine
 GROUP BY name, number_plate, violation
HAVING COUNT(number_plate) >= 2
 ORDER BY name, number_plate, violation;

# В таблице fine увеличить в два раза сумму неоплаченных штрафов для отобранных на предыдущем шаге записей.
UPDATE fine AS f,
	(SELECT name,
	        number_plate,
	        violation
	   FROM fine
	  GROUP BY name, number_plate, violation
	 HAVING COUNT(number_plate) >= 2
	  ORDER BY name, number_plate, violation) AS nf
   SET f.sum_fine = f.sum_fine * 2
 WHERE f.name = nf.name
   AND f.number_plate = nf.number_plate
   AND f.violation = nf.violation
   AND date_payment IS NULL;