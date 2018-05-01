CREATE DATABASE goodfoodhunting; 


CREATE TABLE dishes (
    id SERIAL4 PRIMARY KEY,
    name VARCHAR(200),
    image_url VARCHAR(400)
);
SELECT name FROM dishes;
SELECT id, name, image_url FROM dishes;
SELECT * FROM dishes;

INSERT INTO dishes(name,image_url) VALUES ('pudding',
'https://www.countrysidecravings.com/wp-content/uploads/2017/06/Homemade-Vanilla-Pudding-picture.jpg');

INSERT INTO dishes(name,image_url) VALUES ('chicken',
'http://cdn-image.myrecipes.com/sites/default/files/styles/4_3_horizontal_-_1200x900/public/rosemary-garlic-chicken-quarters-sl.jpg?itok=t7lywxvk');