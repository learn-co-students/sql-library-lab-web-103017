INSERT INTO series (title, author_id, subgenre_id) VALUES ("The Lord of the Ring", 1, 1);
INSERT INTO series (title, author_id, subgenre_id) VALUES ("Narnia", 2, 2);

INSERT INTO authors (name) VALUES ("J.R.R. Tolkien");
INSERT INTO authors (name) VALUES ("C.S. Lewis");

INSERT INTO subgenres (name) VALUES ("Fantasy");
INSERT INTO subgenres (name) VALUES ("Children");

INSERT INTO books (title, year, series_id) VALUES ("The Hobbit", 1959, 1);
INSERT INTO books (title, year, series_id) VALUES ("The Fellowship of the Ring", 1962, 1);
INSERT INTO books (title, year, series_id) VALUES ("The Two Towers", 1965, 1);

INSERT INTO books (title, year, series_id) VALUES ("The Lion, the Witch, and the Wardrobe", 1967, 2);
INSERT INTO books (title, year, series_id) VALUES ("Prince Caspian", 1969, 2);
INSERT INTO books (title, year, series_id) VALUES ("The Voyage of the Dawn Treader", 1971, 2);

INSERT INTO characters (name, motto, species, author_id, series_id) VALUES ("Gandalf", "Is it secret? Is it safe?", "Wizard", 1, 1);
INSERT INTO characters (name, motto, species, author_id, series_id) VALUES ("Bilbo Baggins", "It's my hundred and elevnity fist birthday!", "Hobbit", 1, 1);
INSERT INTO characters (name, motto, species, author_id, series_id) VALUES ("Treebeard", "Slow", "Ent", 1, 1);
INSERT INTO characters (name, motto, species, author_id, series_id) VALUES ("Baldy", "SCREECH!", "Eagle", 1, 1);

INSERT INTO characters (name, motto, species, author_id, series_id) VALUES ("Aslan", "I am the great I am", "Lion", 2, 2);
INSERT INTO characters (name, motto, species, author_id, series_id) VALUES ("King Peter", "I am a boss", "Man", 2, 2);
INSERT INTO characters (name, motto, species, author_id, series_id) VALUES ("Mr. Tumnus", "Spot of tea?", "Faun", 2, 2);
INSERT INTO characters (name, motto, species, author_id, series_id) VALUES ("Prince Caspian", "For Freedom!", "Man", 2, 2);

INSERT INTO character_books (book_id, character_id) VALUES (1, 1), (2, 1), (3, 1), (1, 2), (2, 2), (3, 2), (3, 3), (1, 4);
INSERT INTO character_books (book_id, character_id) VALUES (4, 5), (5, 5), (6, 5), (4, 6), (5, 6), (6, 6), (4, 7), (6, 8);
