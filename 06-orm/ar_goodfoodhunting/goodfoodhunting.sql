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

-- new comments table
CREATE TABLE comments (
    id SERIAL4 PRIMARY KEY,
    content VARCHAR(400) NOT NULL,
    dish_id INTEGER NOT NULL,
    FOREIGN KEY (dish_id) REFERENCES dishes (id) 
    ON DELETE CASCADE
);
-- above will make the comment to be deleted if the dish is deleted
-- DROP TABLE comments;

-- below how to add a comment
INSERT INTO comments
(content, dish_id)
VALUES
('great',1);

CREATE TABLE users(
   id SERIAL4 PRIMARY KEY,
   email VARCHAR(100) NOT NULL,
   password_digest VARCHAR(400) NOT NULL
);
-- always use password_digest

alter table comments add column user_id integer;



CREATE TABLE likes (
    id SERIAL4 PRIMARY KEY,
    user_id INTEGER NOT NULL,
    dish_id INTEGER NOT NULL,
    FOREIGN KEY (dish_id) REFERENCES dishes (id) on DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users (id) on DELETE CASCADE
);