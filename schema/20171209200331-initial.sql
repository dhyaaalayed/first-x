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

CREATE TABLE role (
	id SERIAL PRIMARY KEY NOT NULL,
	type TEXT NOT NULL UNIQUE,
	UNIQUE (id)
);

CREATE TABLE permission (
	id SERIAL PRIMARY KEY NOT NULL,
	type TEXT NOT NULL UNIQUE,
	UNIQUE (id)
);

CREATE TABLE role_permission (
	role_id INTEGER NOT NULL REFERENCES role(id),
	permission_id INTEGER NOT NULL REFERENCES permission(id),
	PRIMARY KEY (role_id, permission_id),
	FOREIGN KEY (role_id) REFERENCES role (id) ON DELETE CASCADE,
	FOREIGN KEY (permission_id) REFERENCES permission (id) ON DELETE CASCADE
);
