/*В таблице складских запасов storehouses_products 
в поле value могут встречаться самые разные цифры: 0,
 если товар закончился и выше нуля, если на складе имеются запасы. 
 Необходимо отсортировать записи таким образом, 
 чтобы они выводились в порядке увеличения значения value. 
 Однако, нулевые запасы должны выводиться в конце, после всех записей.*/

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

insert into storehouses_products (storehouse_id, product_id, value) values 
(1, 1, 0),
(1, 2, 2500),
(1, 3, 0),
(1, 4, 30),
(1, 5, 500),
(1, 6, 1);

select * from storehouses_products order by 1/value desc

 