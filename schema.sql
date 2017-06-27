CREATE TABLE customer (
customer_id  SERIAL ,
name VARCHAR ,
address VARCHAR ,
phone_num VARCHAR ,
payment_meth TEXT ,
PRIMARY KEY (customer_id)
);

CREATE TABLE card_join (
customer_id  INTEGER ,
card_id INTEGER

);

CREATE TABLE orders_join (
customer_id  INTEGER ,
orders_id INTEGER
);

CREATE TABLE card (
id  SERIAL ,
card_num VARCHAR ,
PRIMARY KEY (id)
);

CREATE TABLE orders(
id  SERIAL ,
orders_date TIMESTAMP ,
PRIMARY KEY (id)
);

CREATE TABLE pizza_data (
pizza_data_id  SERIAL ,
size VARCHAR ,
type VARCHAR ,
price DECIMAL ,
happy_hour BOOLEAN NOT NULL DEFAULT 'False' ,
PRIMARY KEY (pizza_data_id)
);

CREATE TABLE pizza_data_join (
pizza_data_id  INTEGER ,
orders_id INTEGER
);

CREATE TABLE ingredients (
id  SERIAL ,
name VARCHAR ,
price DECIMAL ,
PRIMARY KEY (id)
);

CREATE TABLE ingredients_join (
pizza_data_id  INTEGER,
ingredients_id INTEGER
);

CREATE TABLE drinks (
id  SERIAL ,
description VARCHAR ,
manufacturer VARCHAR ,
supplier VARCHAR ,
price DECIMAL ,
PRIMARY KEY (id)
);

CREATE TABLE drinks_join (
orders_id INTEGER ,
drink_id INTEGER
);

CREATE TABLE preference (
id  SERIAL ,
pizza_data_id INTEGER ,
PRIMARY KEY (id)
);

CREATE TABLE preference_join (
preference_id INTEGER ,
customer_id INTEGER
);

CREATE TABLE user_login (
customer_id  INTEGER ,
user_login_name VARCHAR ,
password VARCHAR ,
salt VARCHAR ,
PRIMARY KEY (customer_id)
);

ALTER TABLE card_join ADD FOREIGN KEY (customer_id) REFERENCES customer (customer_id);
ALTER TABLE card_join ADD FOREIGN KEY (card_id) REFERENCES card (id);
ALTER TABLE orders_join ADD FOREIGN KEY (customer_id) REFERENCES customer (customer_id);
ALTER TABLE orders_join ADD FOREIGN KEY (orders_id) REFERENCES orders (id);
ALTER TABLE pizza_data ADD FOREIGN KEY (pizza_data_id) REFERENCES pizza_data_join (pizza_data_id);
ALTER TABLE pizza_data ADD FOREIGN KEY (pizza_data_id) REFERENCES ingredients_join (pizza_data_id);
ALTER TABLE pizza_data_join ADD FOREIGN KEY (orders_id) REFERENCES orders (id);
ALTER TABLE pizza_data_join ADD FOREIGN KEY (pizza_data_id) REFERENCES pizza_data (pizza_data_id);
ALTER TABLE ingredients_join ADD FOREIGN KEY (ingredients_id) REFERENCES ingredients (id);
ALTER TABLE ingredients_join ADD FOREIGN KEY (pizza_data_id) REFERENCES pizza_data (pizza_data_id);
ALTER TABLE drinks_join ADD FOREIGN KEY (orders_id) REFERENCES orders (id);
ALTER TABLE drinks_join ADD FOREIGN KEY (drink_id) REFERENCES drinks (id);
ALTER TABLE preference ADD FOREIGN KEY (pizza_data_id) REFERENCES pizza_data (pizza_data_id);
ALTER TABLE preference_join ADD FOREIGN KEY (preference_id) REFERENCES preference (id);
ALTER TABLE preference_join ADD FOREIGN KEY (customer_id) REFERENCES customer (customer_id);
ALTER TABLE user_login ADD FOREIGN KEY (customer_id) REFERENCES customer (customer_id);
