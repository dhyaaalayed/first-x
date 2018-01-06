CREATE EXTENSION IF NOT EXISTS "citext";

CREATE TABLE "user" (
	id SERIAL PRIMARY KEY NOT NULL,
    mail CITEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    forename TEXT NOT NULL,
    lastname TEXT NOT NULL,
    birthday DATE NULL,
    phone TEXT NOT NULL DEFAULT '',
    mobile TEXT NOT NULL DEFAULT '',
    UNIQUE (id)

);