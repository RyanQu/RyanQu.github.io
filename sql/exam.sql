CREATE TABLE IF NOT EXISTS `actor` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL
);

INSERT INTO `actor` (`id`, `name`) VALUES
(1, 'Leonardo DiCaprio'),
(2, 'Claire Danes'),
(4, 'Kate Winslet'),
(5, 'Tom Hanks'),
(6, 'Christopher Walken'),
(7, 'Ken Watanabe'),
(8, 'Joseph Gordon-Levitt'),
(9, 'Robin Wright'),
(10, 'Edward Burns'),
(11, 'Matt Damon'),
(12, 'Audrey Tautou'),
(13, 'Ian McKellen'),
(14, 'David Morse'),
(15, 'Aaron Eckhart');

CREATE TABLE IF NOT EXISTS `casting` (
  `movieid` int(4) NOT NULL,
  `actorid` int(3) NOT NULL,
  `ord` int(2) NOT NULL
);

INSERT INTO `casting` (`movieid`, `actorid`, `ord`) VALUES
(16, 1, 1),
(16, 2, 2),
(17, 1, 1),
(17, 4, 2),
(18, 1, 1),
(18, 5, 2),
(18, 6, 3),
(19, 1, 1),
(19, 7, 2),
(19, 8, 3),
(20, 5, 1),
(20, 9, 2),
(21, 5, 1),
(21, 10, 2),
(21, 11, 3),
(22, 5, 1),
(22, 12, 2),
(22, 13, 3),
(23, 5, 1),
(23, 14, 2),
(24, 5, 1),
(24, 15, 2);

CREATE TABLE IF NOT EXISTS `movie` (
  `id` int(4) NOT NULL,
  `title` text NOT NULL,
  `yr` int(4) DEFAULT NULL,
  `director` int(3) DEFAULT NULL,
  `budget` int(10) DEFAULT NULL,
  `gross` int(10) DEFAULT NULL
);

INSERT INTO `movie` (`id`, `title`, `yr`, `director`, `budget`, `gross`) VALUES
(6, 'The Longest Day', 1962, NULL, NULL, 17600000),
(7, 'To Kill a Mockingbird', 1962, NULL, NULL, NULL),
(8, 'Cleopatra', 1963, NULL, NULL, 26000000),
(9, 'Star Trek: The Motion Picture', 1979, NULL, NULL, NULL),
(10, 'Star Trek II: The Wrath of Khan', 1982, NULL, NULL, NULL),
(11, 'Star Trek III: The Search for Spock', 1984, NULL, NULL, NULL),
(12, 'Star Trek IV: The Voyage Home', 1986, NULL, NULL, NULL),
(13, 'Star Trek V: The Final Frontier', 1989, NULL, NULL, NULL),
(14, 'Star Trek VI: The Undiscovered Country', 1991, NULL, NULL, NULL),
(15, 'The Original Series： Star Trek', 1966, NULL, NULL, NULL),
(16, 'Romeo + Juliet', 1996, NULL, NULL, NULL),
(17, 'Titanic', 1997, NULL, NULL, NULL),
(18, 'Catch Me If You Can', 2002, NULL, NULL, NULL),
(19, 'Inception', 2010, NULL, NULL, NULL),
(20, 'Forrest Gump', 1994, NULL, NULL, NULL),
(21, 'Saving Private Ryan', 1998, NULL, NULL, NULL),
(22, 'The Da Vinci Code', 2006, NULL, NULL, NULL),
(23, 'The Green Mile', 1999, NULL, NULL, NULL),
(24, 'Sully', 2016, NULL, NULL, NULL);