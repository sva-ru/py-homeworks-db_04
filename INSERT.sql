INSERT INTO album ("title","year_of_release")
VALUES ('Happier Than Ever', 2020),
('Celebration', 2009),
('Death Magnetic', 2008)

INSERT INTO artist ("name")
VALUES ('Madonna'),
('Billie Eilish'),
('Metalica'),
('Papa Roch')

INSERT INTO artist_album
VALUES (1, 2),
(2, 1),
(3, 3)

INSERT INTO collection ("name","year_of_release")
VALUES ('Finally Enough Love: 50 Number Ones', 2022),
('Best', 2018),
('when the partys over', 2019),
('wish you were gay', 2020)

INSERT INTO genre ("title")
VALUES ('pop'),
('rock'),
('metal'),
('techno')

INSERT INTO genre_artist
VALUES (1, 1),
(1, 2),
(3, 3),
(2, 4)

INSERT INTO track ("album_id", "name","duration")
VALUES (3, 'My Apocalypse', 3.3),
(2, 'Celebration', 4.5),
(1, 'Your Power', 6.0),
(1, 'Therefore I Am', 3.0),
(1, 'Billie Bossa Nova', 3.4),
(1, 'Oxytocin', 3.5),
(1, 'NDA', 4.1)

INSERT INTO track_collection
VALUES (1, 2),
(2, 1),
(3, 3),
(4, 3),
(5, 3),
(6, 4),
(5, 4)







