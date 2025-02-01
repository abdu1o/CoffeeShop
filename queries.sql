/* TASK 2 */
/* INSERT INTO public."Positions" (position_name)  
VALUES 
('Кондитер'); */

/* INSERT INTO public."Staff" (phone, address, position_id, schedule)  
VALUES 
('+213435534', '123 Main St, Kyiv', 5, 'Mon-Fri: 9:00-17:00'); */

/* INSERT INTO public."Clients" (id, birth_date, phone, address, discount)   
VALUES 
(6, '2000-12-12', '+38023123237', '123 Main St, Kyiv', 100); */

/* INSERT INTO public."Orders" (client_id, staff_id, drink_id)   
VALUES 
(1, 1, 1); */

/* INSERT INTO public."Orders" (client_id, staff_id, dessert_id)   
VALUES 
(2, 2, 2); */

/* INSERT INTO public."Drinks" (name_eng, name_ua, price)   
VALUES 
('Kapuchino', 'Капучино', 65); */ 


/* TASK 3 */
UPDATE public."Drinks"
SET price = 200
WHERE id = 7;

UPDATE public."Staff"
SET address = '789 Filatova'
WHERE position_id = 5;

UPDATE public."Staff"
SET phone = '+111111111'
WHERE position_id = 1;

UPDATE public."Clients"
SET discount = 50
WHERE id = 1;

UPDATE public."Drinks"
SET name_eng = 'No beer', name_ua = 'Не пиво'
WHERE id = 1;

UPDATE public."Desserts"
SET name_eng = 'No Tiramisu', name_ua = 'Не Тирамісу'
WHERE id = 1;


/* TASK 4 */
DELETE FROM public."Orders"
WHERE dessert_id = 3;
DELETE FROM public."Desserts"
WHERE id = 3;

DELETE FROM public."Orders"
WHERE staff_id = 2;
DELETE FROM public."Staff"
WHERE position_id = 2;

DELETE FROM public."Orders"
WHERE staff_id = 1;
DELETE FROM public."Staff"
WHERE position_id = 1;

DELETE FROM public."Clients"
WHERE id = 1;

INSERT INTO public."Orders" (client_id, staff_id, dessert_id, drink_id)   
VALUES 
(2, 3, 1, 1);
INSERT INTO public."Orders" (client_id, staff_id, dessert_id, drink_id)   
VALUES 
(2, 3, 2, 1);
DELETE FROM public."Orders"
WHERE dessert_id = 1;

DELETE FROM public."Orders"
WHERE id = 14;


/* TASK 5 */
SELECT *
FROM public."Drinks"
ORDER BY ID ASC;

SELECT *
FROM public."Desserts"
ORDER BY ID ASC;

SELECT *
FROM public."Staff"
WHERE position_id = 1  /* position_id баристи */
ORDER BY ID ASC;

SELECT *
FROM public."Staff"
WHERE position_id = 2  /* position_id офіціанта */
ORDER BY ID ASC;

SELECT *
FROM public."Orders"
WHERE dessert_id = 2
ORDER BY ID ASC;

SELECT *
FROM public."Orders"
WHERE staff_id = 3
ORDER BY ID ASC;

SELECT *
FROM public."Orders"
WHERE client_id = 2
ORDER BY ID ASC;

/*TASK 1 PART 2*/
SELECT MIN(discount) AS min_discount
FROM public."Clients";

SELECT MAX(discount) AS max_discount
FROM public."Clients";

SELECT *
FROM public."Clients"
WHERE discount = (SELECT MIN(discount) FROM public."Clients");

SELECT *
FROM public."Clients"
WHERE discount = (SELECT MAX(discount) FROM public."Clients");

SELECT AVG(discount) AS avg_discount
FROM public."Clients";

/*TASK 2 PART 2*/
SELECT *
FROM public."Clients"
ORDER BY birth_date DESC
LIMIT 1;

SELECT *
FROM public."Clients"
ORDER BY birth_date ASC
LIMIT 1;

SELECT *
FROM public."Clients"
WHERE EXTRACT(MONTH FROM birth_date) = EXTRACT(MONTH FROM CURRENT_DATE)
  AND EXTRACT(DAY FROM birth_date) = EXTRACT(DAY FROM CURRENT_DATE);

SELECT *
FROM public."Clients"
WHERE address IS NULL OR TRIM(address) = '';

/*TASK 3 PART 2*/
SELECT *
FROM public."Orders"
WHERE order_date = '2024-01-01';

SELECT *
FROM public."Orders"
WHERE order_date BETWEEN '2024-01-01' AND '2025-01-31';

SELECT COUNT(*) AS dessert_orders_count
FROM public."Orders"
WHERE order_date = '2024-01-01'
  AND dessert_id IS NOT NULL;

SELECT COUNT(*) AS drink_orders_count
FROM public."Orders"
WHERE order_date = '2024-01-01'
  AND drink_id IS NOT NULL;

/*TASK 4 PART 2*/
SELECT clients.*, staff.*
FROM public."Orders" orders
JOIN public."Clients" clients ON o.client_id = clients.id
JOIN public."Staff" staff ON o.staff_id = staff.id
WHERE orders.order_date = '2024-01-01'
  AND orders.drink_id IS NOT NULL
  AND staff.position_id = 1;

SELECT AVG(COALESCE(drinks.price, 0) + COALESCE(desserts.price, 0)) AS avg_order_sum
FROM public."Orders" orders
LEFT JOIN public."Drinks" drinks ON orders.drink_id = drinks.id
LEFT JOIN public."Desserts" desserts ON orders.dessert_id = desserts.id
WHERE orders.order_date = '2024-01-01';

SELECT MAX(COALESCE(drinks.price, 0) + COALESCE(desserts.price, 0)) AS max_order_sum
FROM public."Orders" orders
LEFT JOIN public."Drinks" drinks ON orders.drink_id = drinks.id
LEFT JOIN public."Desserts" desserts ON orders.dessert_id = desserts.id
WHERE orders.order_date = '2024-01-01';

SELECT clients.*, (COALESCE(drinks.price, 0) + COALESCE(desserts.price, 0)) AS order_sum
FROM public."Orders" orders
JOIN public."Clients" clients ON orders.client_id = clients.id
LEFT JOIN public."Drinks" drinks ON orders.drink_id = drinks.id
LEFT JOIN public."Desserts" desserts ON orders.dessert_id = desserts.id
WHERE orders.order_date = '2025-02-01'
ORDER BY order_sum DESC
LIMIT 1;


