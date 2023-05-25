CREATE TABLE IF NOT EXISTS genre (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL
);
CREATE TABLE IF NOT EXISTS artist (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_artist (
	genres_id INTEGER REFERENCES genre(id),
	artist_id INTEGER REFERENCES artist(id),
	CONSTRAINT pk PRIMARY KEY (genres_id, artist_id)
);

CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT null,
	year_of_release INT NOT NULL
);

CREATE TABLE IF NOT EXISTS artist_album (
	artist_id INTEGER references artist(id),
	album_id INTEGER REFERENCES album(id),
	CONSTRAINT pk2 PRIMARY KEY (artist_id, album_id)
);



CREATE TABLE IF NOT EXISTS track (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES album(id),
	name VARCHAR(40) NOT NULL,
	duration INT NOT NULL
);

CREATE TABLE IF NOT EXISTS collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT null,
	year_of_release INT NOT NULL
);


CREATE TABLE IF NOT EXISTS track_collection (
	track_id INTEGER references track(id),
	collection_id INTEGER REFERENCES collection(id),
	CONSTRAINT pk3 PRIMARY KEY (track_id, collection_id)
);
