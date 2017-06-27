COPY card(card_num) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/card.csv' DELIMITER ',' CSV HEADER;
COPY customer(name,address,phone_num,payment_meth) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/customers.csv' DELIMITER ',' CSV HEADER;
COPY drinks(description,manufacturer,supplier,price) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/drinks.csv' DELIMITER ',' CSV HEADER;
COPY ingredients(name,price) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/ingredients.csv' DELIMITER ',' CSV HEADER;
COPY orders(orders_date) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/orders.csv' DELIMITER ',' CSV HEADER;
COPY pizza_data(size,type,price) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/pizza_data.csv' DELIMITER ',' CSV HEADER;
COPY preference(pizza_data_id) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/preference.csv' DELIMITER ',' CSV HEADER;
COPY user_login(customer_id,user_login_name,password) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/users.csv' DELIMITER ',' CSV HEADER;

COPY ingredients_join(pizza_data_id,ingredients_id) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/ingredients_join.csv' DELIMITER ',' CSV HEADER;
COPY orders_join(customer_id,orders_id) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/orders_join.csv' DELIMITER ',' CSV HEADER;
COPY preference_join(preference_id,customer_id) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/preference_join.csv' DELIMITER ',' CSV HEADER;

COPY card_join(customer_id,card_id) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/card_join.csv' DELIMITER ',' CSV HEADER;


COPY pizza_data_join(pizza_data_id,orders_id) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/pizza_data_join.csv' DELIMITER ',' CSV HEADER;


COPY drinks_join(orders_id,drink_id) FROM
'/Users/Mr.Ware/Desktop/LGProjects/Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API/csv/drinks_join.csv' DELIMITER ',' CSV HEADER;
