CREATE TABLE category(

id  SERIAL PRIMARY KEY,
name VARCHAR(50),
description VARCHAR(255),
image_url VARCHAR(50),
is_active BOOLEAN

);

INSERT INTO category (name,description,image_url,is_active) VALUES ('Mobile','This is Mobile...','CAT_3.png',true);