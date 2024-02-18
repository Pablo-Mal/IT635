CREATE DATABASE midterm_project;
CREATE USER project_user WITH PASSWORD 'Password';
GRANT ALL PRIVILEGES ON DATABASE midterm_project to project_user;
\c midterm_project

CREATE TABLE store_locations (
	store_id INTEGER NOT NULL,
	name VARCHAR (10) NOT NULL,
	street VARCHAR (35) NOT NULL,
	city VARCHAR (20) NOT NULL,
	stateL VARCHAR (20) NOT NULL,
	zip VARCHAR (10) NOT NULL,
	phone VARCHAR (10) NOT NULL,
	PRIMARY KEY ( store_id )
);

CREATE TABLE distributors (
	distributor_id INTEGER NOT NULL,
	name VARCHAR (20) NOT NULL,
	street VARCHAR (35) NOT NULL,
	city VARCHAR (20) NOT NULL,
	stateL VARCHAR (20) NOT NULL,
	zip VARCHAR (10) NOT NULL,
	phone VARCHAR (10) NOT NULL,
	PRIMARY KEY ( distributor_id )
);

CREATE TABLE inventory (
	inventory_id INTEGER NOT NULL,
	name VARCHAR (20) NOT NULL,
	aisle VARCHAR (5) NOT NULL,
	shelf VARCHAR (5) NOT NULL,
	PRIMARY KEY ( inventory_id )
);

CREATE TABLE master (
	store_id INTEGER NOT NULL,
	distributor_id INTEGER NOT NULL,
	inventory_id INTEGER NOT NULL,
	quantity INTEGER NOT NULL,
	PRIMARY KEY ( store_id, distributor_id, inventory_id )	
);

GRANT ALL PRIVILEGES ON store_locations, distributors, inventory, master TO project_user;
