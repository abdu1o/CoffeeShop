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