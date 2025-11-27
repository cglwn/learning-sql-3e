-- Fill in the blanks (denoted by <#>) for this multitable query to achieve the following results:
--
-- mysql> SELECT c.email, r.return_date
--     -> FROM customer c
--     ->   INNER JOIN rental <1>
--     ->   ON c.customer_id = <2>
--     -> WHERE date(r.rental_date) = '2005-06-14'
--     -> ORDER BY <3> <4>;
-- +---------------------------------------+---------------------+
-- | email                                 | return_date         |
-- +---------------------------------------+---------------------+
-- | DANIEL.CABRAL@sakilacustomer.org      | 2005-06-23 22:00:38 |
-- | TERRANCE.ROUSH@sakilacustomer.org     | 2005-06-23 21:53:46 |
-- | MIRIAM.MCKINNEY@sakilacustomer.org    | 2005-06-21 17:12:08 |
-- | GWENDOLYN.MAY@sakilacustomer.org      | 2005-06-20 02:40:27 |
-- | JEANETTE.GREENE@sakilacustomer.org    | 2005-06-19 23:26:46 |
-- | HERMAN.DEVORE@sakilacustomer.org      | 2005-06-19 03:20:09 |
-- | JEFFERY.PINSON@sakilacustomer.org     | 2005-06-18 21:37:33 |
-- | MATTHEW.MAHAN@sakilacustomer.org      | 2005-06-18 05:18:58 |
-- | MINNIE.ROMERO@sakilacustomer.org      | 2005-06-18 01:58:34 |
-- | SONIA.GREGORY@sakilacustomer.org      | 2005-06-17 21:44:11 |
-- | TERRENCE.GUNDERSON@sakilacustomer.org | 2005-06-17 05:28:35 |
-- | ELMER.NOE@sakilacustomer.org          | 2005-06-17 02:11:13 |
-- | JOYCE.EDWARDS@sakilacustomer.org      | 2005-06-16 21:00:26 |
-- | AMBER.DIXON@sakilacustomer.org        | 2005-06-16 04:02:56 |
-- | CHARLES.KOWALSKI@sakilacustomer.org   | 2005-06-16 02:26:34 |
-- | CATHERINE.CAMPBELL@sakilacustomer.org | 2005-06-15 20:43:03 |
-- +---------------------------------------+---------------------+
-- 16 rows in set (0.03 sec)


SELECT c.email, r.return_date
FROM customer c
  INNER JOIN rental r
  ON c.customer_id = r.customer_id
WHERE date(r.rental_date) = '2005-06-14'
ORDER BY return_date DESC;
