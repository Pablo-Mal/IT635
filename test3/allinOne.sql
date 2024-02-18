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
--
--change tags to new tags asdID -> asd_id
/*
COPY storeLocations (storeID, name, street, city, stateL, zip, phone) FROM stdin;
0,notHTF00,987 IDK Street,Where,NJ,07102,1234567890
1,notHTF01,654 WhoKnows Ave,They,NY,00404,0987654321
2,notHFT02,543 WhosOnFirst Street,What,FL,77777,4040001111
\.

COPY dustributors (distributorID, name, street, city, stateL, zip, phone) FROM stdin;
0,notBauer,QualityTools Ave, Emerald City, Oz,02020,1270010000
1,notIcon,At Ridiculously Street,Mega City One,JD,06660,6472656464
2,notPredator,Low Prices Street,Puerto Vallarta,MX,43210,7072656473
\.

COPY inventory (inventoryID, name, aisle, shelf) FROM stdin;
inventoryID,name,aisle,shelf
0,Drills,1,2
1,Tires,7,3
2,Lights,3,1
\.
*/

/*
COPY public.master (storeID, distributorID, inventoryID, quantity) FROM stdin;
0,0,0,5
0,0,1,21
0,0,2,23
0,1,0,41
0,1,1,9
0,1,2,3
0,2,0,41
0,2,1,2
0,2,2,7
1,0,0,9
1,0,1,10
1,0,2,18
1,1,0,6
1,1,1,35
1,1,2,67
1,2,0,21
1,2,1,37
1,2,2,22
2,0,0,7
2,0,1,32
2,0,2,95
2,1,0,74
2,1,1,14
2,1,2,68
2,2,0,35
2,2,1,26
2,2,2,24
\.
*/
/*
SELECT pg_catalog.setval('public.storeLocations_id_seq',3,true);
SELECT pg_catalog.setval('public.dustributors_id_seq',3,true);
SELECT pg_catalog.setval('public.inventory_id_seq',3,true);
*/