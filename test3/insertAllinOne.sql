/*
CREATE DATABASE midtermProject;
CREATE USER projectUser WITH PASSWORD 'Password';
GRANT ALL PRIVILEGES ON DATABASE midtermProject to projectUser:

*/
\c midterm_project
INSERT INTO store_locations VALUES (0,'notHTF00','987 IDK Street','Where','NJ','07102','1234567890');
INSERT INTO store_locations VALUES (1,'notHTF01','654 WhoKnows Ave','They','NY','00404','0987654321');
INSERT INTO store_locations VALUES (2,'notHFT02','543 WhosOnFirst Street','What','FL','77777','4040001111');

INSERT INTO distributors VALUES (0,'notBauer','QualityTools Ave','Emerald City','Oz','02020','1270010000');
INSERT INTO distributors VALUES (1,'notIcon','At Ridiculously Street','Mega City One','JD','06660','6472656464');
INSERT INTO distributors VALUES (2,'notPredator','Low Prices Street','Puerto Vallarta','MX','43210','7072656473');

INSERT INTO inventory VALUES (0,'Drills','1','2');
INSERT INTO inventory VALUES (1,'Tires','7','3');
INSERT INTO inventory VALUES (2,'Lights','3','1');

INSERT INTO master VALUES (0,0,0,5);
INSERT INTO master VALUES (0,0,1,21);
INSERT INTO master VALUES (0,0,2,23);
INSERT INTO master VALUES (0,1,0,41);
INSERT INTO master VALUES (0,1,1,9);
INSERT INTO master VALUES (0,1,2,3);
INSERT INTO master VALUES (0,2,0,41);
INSERT INTO master VALUES (0,2,1,2);
INSERT INTO master VALUES (0,2,2,7);
INSERT INTO master VALUES (1,0,0,9);
INSERT INTO master VALUES (1,0,1,10);
INSERT INTO master VALUES (1,0,2,18);
INSERT INTO master VALUES (1,1,0,6);
INSERT INTO master VALUES (1,1,1,35);
INSERT INTO master VALUES (1,1,2,67);
INSERT INTO master VALUES (1,2,0,21);
INSERT INTO master VALUES (1,2,1,37);
INSERT INTO master VALUES (1,2,2,22);
INSERT INTO master VALUES (2,0,0,7);
INSERT INTO master VALUES (2,0,1,32);
INSERT INTO master VALUES (2,0,2,95);
INSERT INTO master VALUES (2,1,0,74);
INSERT INTO master VALUES (2,1,1,14);
INSERT INTO master VALUES (2,1,2,68);
INSERT INTO master VALUES (2,2,0,35);
INSERT INTO master VALUES (2,2,1,26);
INSERT INTO master VALUES (2,2,2,24);

/*
SELECT pg_catalog.setval('public.storeLocations_id_seq',3,true);
SELECT pg_catalog.setval('public.dustributors_id_seq',3,true);
SELECT pg_catalog.setval('public.inventory_id_seq',3,true);
*/