# Для тех, кто уже оплатил штраф, вывести информацию о том, изменялась ли стандартная сумма штрафа.
SELECT f.name,
       f.number_plate,
       f.violation,
       IF(f.sum_fine = tv.sum_fine,
          'Стандартная сумма штрафа',
          IF(f.sum_fine < tv.sum_fine,
             'Уменьшенная сумма штрафа',
             'Увеличенная сумма штрафа')
	       ) AS decsription
  FROM fine f,
       traffic_violation tv
 WHERE tv.violation = f.violation
   AND f.sum_fine IS NOT NULL;

# Занести в таблицу fine суммы штрафов, которые должен оплатить водитель,  в соответствии с данными из
# таблицы traffic_violation. При этом суммы заносить только в пустые поля столбца  sum_fine.
UPDATE fine f, traffic_violation tv
   SET f.sum_fine = tv.sum_fine
 WHERE f.sum_fine IS NULL
   AND f.violation = tv.violation;