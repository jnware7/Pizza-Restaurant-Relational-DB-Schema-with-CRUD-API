
CREATE TABLE customer(
  id SERIAL,
  name VARCHAR,
  address VARCHAR,
  phone_num VARCHAR,
  user_name VARCHAR,
  password VARCHAR,
  pay_method VARCHAR,
  prefrence_id INTEGER,
  pizzadata_id INTEGER,
  drink_id INTEGER
);

CREATE TABLE pizzadata(
  id SERIAL,
  size VARCHAR,
  type VARCHAR,
  pizza_id INTEGER,
  price VARCHAR,
);

CREATE TABLE prefrence(
  id SERIAL,
  customer_id INTEGER,
  pizzadata_id VARCHAR
);

CREATE TABLE ingredients(
  id SERIAL,
  name VARCHAR
);

CREATE TABLE drinks(
  id SERIAL,
  description VARCHAR,
  manufacturer VARCHAR,
  supplier VARCHAR,
  price VARCHAR
);

CREATE TABLE pizza(
  id SERIAL,
  ingredients_id INTEGER,
  name VARCHAR,
  add_on VARCHAR DEFAULT NULL
);

INSERT INTO ingredients(name)
VALUES('Peppers');
INSERT INTO ingredients(name)
VALUES('Onions');
INSERT INTO ingredients(name)
VALUES('Olives');
INSERT INTO ingredients(name)
VALUES('Mushrooms');
INSERT INTO ingredients(name)
VALUES('Cheese');
INSERT INTO ingredients(name)
VALUES('Pepperoni');


INSERT INTO pizza(ingredients_id, name)
VALUES(5,'Cheese');
INSERT INTO pizza(ingredients_id, name)
VALUES(6,'Pepperoni');
INSERT INTO pizza(ingredients_id, name)
VALUES(5,'Pepperoni');
INSERT INTO pizza(ingredients_id, name)
VALUES(1,'Veggie');
INSERT INTO pizza(ingredients_id, name)
VALUES(2,'Veggie');
INSERT INTO pizza(ingredients_id, name)
VALUES(3,'Veggie');
INSERT INTO pizza(ingredients_id, name)
VALUES(4,'Veggie');
