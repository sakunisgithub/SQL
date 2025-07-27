CREATE DATABASE zomato;

USE zomato;

CREATE TABLE orders (
	order_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    r_id INTEGER,
    amount INTEGER,
    `date` DATE,
    partner_id INTEGER,
    delivery_time INTEGER,
    delivery_rating INTEGER,
    restaurant_rating INTEGER NULL
);