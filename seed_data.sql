COPY customer(name,address,phone_num,payment_meth) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/customers.csv' DELIMITER ',' CSV HEADER;

COPY card(card_num,customer_id) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/card.csv' DELIMITER ',' CSV HEADER;


COPY drinks(description,manufacturer,supplier,price) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/drinks.csv' DELIMITER ',' CSV HEADER;


COPY ingredients(name,price) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/ingredients.csv' DELIMITER ',' CSV HEADER;


COPY orders(orders_date,customer_id) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/orders.csv' DELIMITER ',' CSV HEADER;


COPY pizza(size,type,price) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/pizza.csv' DELIMITER ',' CSV HEADER;


COPY preference(pizza_id,customer_id) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/preference.csv' DELIMITER ',' CSV HEADER;


COPY users(customer_id,users_name,password) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/users.csv' DELIMITER ',' CSV HEADER;



COPY ingredients_join(pizza_id,ingredients_id) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/ingredients_join.csv' DELIMITER ',' CSV HEADER;



COPY pizza_join(pizza_id,orders_id) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/pizza_join.csv' DELIMITER ',' CSV HEADER;



COPY drinks_join(orders_id,drink_id) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/drinks_join.csv' DELIMITER ',' CSV HEADER;
