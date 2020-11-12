CREATE TABLE IF NOT EXISTS restaurants (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    location VARCHAR(50) NULL,
    price_range INT NOT NULL check(price_range >= 1 and price_range <=5)
);
CREATE TABLE IF NOT EXISTS reviews (
    id BIGSERIAL not null PRIMARY KEY,
    restaurant_id BIGINT not null REFERENCES restaurants(id) ON DELETE CASCADE,
    name VARCHAR(50) not null,
    review TEXT not null,
    rating INT not null check(rating >=1 and rating <=5)
);
INSERT INTO restaurants (name, location, price_range) VALUES ('McDonalds', 'New York', 3);
INSERT INTO restaurants (name, location, price_range) VALUES ('Mara', 'Subotica', 2);
INSERT INTO restaurants (name, location, price_range) VALUES ('Boss', 'Subotica', 4);
INSERT INTO restaurants (name, location, price_range) VALUES ('Nirvana', 'New York', 3);
INSERT INTO restaurants (name, location, price_range) VALUES ('Test restaurant 1', 'Test Place', 3);
INSERT INTO restaurants (name, location, price_range) VALUES ('Test restaurant 2', 'Test Place', 1);
INSERT INTO reviews (restaurant_id, name, review, rating) values (3, 'carl', 'restaurant was awesome', 5);
INSERT INTO reviews (restaurant_id, name, review, rating) values (3, 'matt', 'restaurant was awesome', 5);
INSERT INTO reviews (restaurant_id, name, review, rating) values (4, 'stan', 'food is terrible', 1);
INSERT INTO reviews (restaurant_id, name, review, rating) values (5, 'test', 'restaurant was awesome', 3);