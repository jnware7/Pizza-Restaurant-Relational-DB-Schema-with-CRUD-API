
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
CREATE TABLE ingredents(
  id SERIAL INTEGER,
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
  ingredents_id INTEGER,
  name VARCHAR,
  add_on VARCHAR
);
