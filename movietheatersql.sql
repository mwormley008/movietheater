CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY 
);

CREATE TABLE "ticket"(
	ticket_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	theater_id INTEGER NOT NULL,
);

alter TABLE ticket
	ADD FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	ADD FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
;

ALTER TABLE ticket
	ADD FOREIGN KEY(theater_id) REFERENCES theater(theater_id);

CREATE TABLE "movie"(
	movie_id SERIAL PRIMARY KEY,
	theater_id INTEGER NOT NULL,
);



CREATE TABLE "MovieTheater"(
	movie_id INTEGER NOT NULL,
	theater_id INTEGER NOT NULL
);

ALTER TABLE "MovieTheater"
	ADD FOREIGN KEY(theater_id) REFERENCES theater(theater_id);

ALTER TABLE "MovieTheater"
	ADD FOREIGN KEY(movie_id) REFERENCES movie(movie_id);

CREATE TABLE "theater"(
	theater_id SERIAL PRIMARY KEY,
	movie_id INTEGER NOT NULL
);