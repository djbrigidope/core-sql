/*
Challenge: Book list database

What are your favorite books? You can make a database table to store them in!
In this first step, create a table to store your list of books. It should have columns for id, name, and rating.
*/

CREATE TABLE books ( id INTEGER, name TEXT, rating INTEGER);

INSERT INTO books VALUES
( 1, "The Alchemist", 5),
( 2, "Wild Magic", 5),
( 3, "Brave New World", 4);

--------------------------------------------------------------------------------

/*
Challenge: Box office hits database

This database contains an incomplete list of box office hits and their release year.
In this challenge, you're going to get the results back out of the database in different ways!
In this first step, just select all the movies.
*/
/*
CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);
*/

SELECT * FROM movies;
SELECT * FROM movies WHERE release_year >= 2000 ORDER BY release_year;

--------------------------------------------------------------------------------

/*
Challenge: TODO list database stats

Here's a table containing a TODO list with the number of minutes it will take to complete each item.
Insert another item to your todo list with the estimated minutes it will take.
*/
/*
CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30); */
INSERT INTO todo_list VALUES (4, "Take a nap", 30);

SELECT SUM(minutes) FROM todo_list;

--------------------------------------------------------------------------------

/*
Project: Design a store database

Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in.
You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store.
You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.
*/

CREATE TABLE store (
  id INTEGER,
  name TEXT,
  price INTEGER,
  quantity INTEGER,
  sku INTEGER
);

INSERT INTO store VALUES
(1, "salmon", 20, 20, 820485),
(2, "cheddar cheese", 30, 5, 8285),
(3, "spaghetti noodle", 35, 1, 69485),
(4, "fuji apple", 54, 1, 82940),
(5, "cucumber", 50, 1, 2985),
(6, "tomato", 28, 1, 3905485),
(7, "ground turkey", 15, 5, 1345),
(8, "pinto beans", 47, 1, 947),
(9, "green tea", 8, 4, 12),
(10, "pizza rolls", 23, 6, 3789),
(11, "tater tots", 26, 8, 33904),
(12, "frozen blueberry", 17, 9, 4857),
(13, "snow pea", 2, 6, 844093),
(14, "clam chowder", 5, 3, 485390),
(15, "vienna sausages", 58, 2, 74827),
(16, "tuna", 8, 3, 6239);

SELECT name FROM store WHERE quantity > 5 ORDER BY price;
SELECT SUM(price) FROM store where quantity < 5;
