
CREATE TABLE customer (
id  SERIAL ,
name VARCHAR ,
address VARCHAR ,
phone_num TEXT ,
payment_meth TEXT ,
PRIMARY KEY (id)
);

CREATE TABLE card (
id  SERIAL ,
card_num VARCHAR ,
customer_id INTEGER ,
PRIMARY KEY (id)
);

CREATE TABLE orders (
id  SERIAL ,
orders_date TIMESTAMP DEFAULT NOW() ,
customer_id INTEGER ,
PRIMARY KEY (id)
);

CREATE TABLE pizza (
id  SERIAL ,
size VARCHAR ,
type VARCHAR ,
price DECIMAL ,
happy_hour BOOLEAN NOT NULL DEFAULT 'False' ,
PRIMARY KEY (id)
);

CREATE TABLE pizza_join (
pizza_id  INTEGER ,
orders_id INTEGER

);

CREATE TABLE ingredients (
id  SERIAL ,
name VARCHAR ,
price DECIMAL ,
PRIMARY KEY (id)
);

CREATE TABLE ingredients_join (
pizza_id  INTEGER,
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
orders_id  INTEGER ,
drink_id INTEGER
);

CREATE TABLE preference (
id  SERIAL ,
pizza_id INTEGER ,
customer_id INTEGER ,
PRIMARY KEY (id)
);

CREATE TABLE users (
customer_id  SERIAL ,
users_name VARCHAR ,
password VARCHAR
);

ALTER TABLE card ADD FOREIGN KEY (customer_id) REFERENCES customer (id);
ALTER TABLE orders ADD FOREIGN KEY (customer_id) REFERENCES customer (id);
ALTER TABLE pizza_join ADD FOREIGN KEY (orders_id) REFERENCES orders (id);
ALTER TABLE pizza_join ADD FOREIGN KEY (pizza_id) REFERENCES pizza (id);
ALTER TABLE ingredients_join ADD FOREIGN KEY (pizza_id) REFERENCES pizza (id);
ALTER TABLE ingredients_join ADD FOREIGN KEY (ingredients_id) REFERENCES ingredients (id);
ALTER TABLE drinks_join ADD FOREIGN KEY (orders_id) REFERENCES orders (id);
ALTER TABLE drinks_join ADD FOREIGN KEY (drink_id) REFERENCES drinks (id);
ALTER TABLE preference ADD FOREIGN KEY (pizza_id) REFERENCES pizza (id);
ALTER TABLE preference ADD FOREIGN KEY (customer_id) REFERENCES customer (id);
ALTER TABLE users ADD FOREIGN KEY (customer_id) REFERENCES customer (id);
