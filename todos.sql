//Write the CREATE TABLE statement to make this table.

CREATE DATABASE todolist;
\c todolist
CREATE TABLE todos(
id SERIAL PRIMARY KEY,
title VARCHAR(255),
details VARCHAR,
priority INTEGER DEFAULT 1,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
completed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


//Write INSERT statements to insert five todos into this table, with one of them completed.//

INSERT INTO todos (title, details, priority, completed_at) VALUES ('feed cat', 'feed 1 cat and 4 kittens', 1, '2017-06-27 14:25:20.8214');
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('take a shower', 'take a shower before school', 2, '2017-06-27 13:29:47.20703', NULL);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Eat breakfast', 'Make breakfast', 3, '2017-06-27 13:35:47.20703', NULL);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Clean the kitchen', 'wash all the dishes', 4, '2017-06-27 13:38:47.20703', NULL);

//Write a SELECT statement to find all incomplete todos.//
SELECT * FROM todos WHERE created_at = IS NULL;

//Write a SELECT statement to find all todos with a priority above 1.
SELECT * FROM todos WHERE priority > 1;

//Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.
UPDATE todos SET completed_at = '2017-06-27 13:38:47.20703' WHERE id = 4;

//Write a DELETE statement to delete all completed todos.
DELETE FROM todos WHERE completed_at IS NOT NULL;
