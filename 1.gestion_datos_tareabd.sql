-- create database 
create database sqlbolt;

use sqlbolt;

-- create schemas & data
CREATE TABLE movies(
   id             INTEGER  NOT NULL PRIMARY KEY 
  ,title          VARCHAR(19) NOT NULL
  ,director       VARCHAR(14) NOT NULL
  ,year           INTEGER  NOT NULL
  ,length_minutes INTEGER  NOT NULL
);
INSERT INTO movies(id,title,director,year,length_minutes) VALUES (1,'Finding Nemo','Andrew Stanton',2003,107);
INSERT INTO movies(id,title,director,year,length_minutes) VALUES (2,'Up','Pete Docter',2009,101);
INSERT INTO movies(id,title,director,year,length_minutes) VALUES (3,'Ratatouille','Brad Bird',2007,115);
INSERT INTO movies(id,title,director,year,length_minutes) VALUES (4,'Cars 2','John Lasseter',2011,120);
INSERT INTO movies(id,title,director,year,length_minutes) VALUES (5,'A Bug''s Life','John Lasseter',1998,95);
INSERT INTO movies(id,title,director,year,length_minutes) VALUES (6,'Monsters, Inc.','Pete Docter',2001,92);
INSERT INTO movies(id,title,director,year,length_minutes) VALUES (7,'Brave','Brenda Chapman',2012,102);
INSERT INTO movies(id,title,director,year,length_minutes) VALUES (8,'Toy Story 3','Lee Unkrich',2010,103);
INSERT INTO movies(id,title,director,year,length_minutes) VALUES (9,'Cars','John Lasseter',2006,117);
INSERT INTO movies(id,title,director,year,length_minutes) VALUES (10,'Toy Story 2','John Lasseter',1999,93);
INSERT INTO movies(id,title,director,year,length_minutes) VALUES (11,'The Incredibles','Brad Bird',2004,116);
INSERT INTO movies(id,title,director,year,length_minutes) VALUES (12,'Toy Story','John Lasseter',1995,81);
INSERT INTO movies(id,title,director,year,length_minutes) VALUES (13,'WALL-E','Andrew Stanton',2008,104);
INSERT INTO movies(id,title,director,year,length_minutes) VALUES (14,'Monsters University','Dan Scanlon',2013,110);


CREATE TABLE north_american_cities(
   city       VARCHAR(19) NOT NULL PRIMARY KEY
  ,country    VARCHAR(13) NOT NULL
  ,population NUMERIC(7,0) NOT NULL
  ,latitude   NUMERIC(9,6) NOT NULL
  ,longitude  NUMERIC(11,6) NOT NULL
);
INSERT INTO north_american_cities(city,country,population,latitude,longitude) VALUES ('Guadalajara','Mexico',1500800,20.659699,-103.349609);
INSERT INTO north_american_cities(city,country,population,latitude,longitude) VALUES ('Toronto','Canada',2795060,43.653226,-79.383184);
INSERT INTO north_american_cities(city,country,population,latitude,longitude) VALUES ('Houston','United States',2195914,29.760427,-95.369803);
INSERT INTO north_american_cities(city,country,population,latitude,longitude) VALUES ('New York','United States',8405837,40.712784,-74.005941);
INSERT INTO north_american_cities(city,country,population,latitude,longitude) VALUES ('Philadelphia','United States',1553165,39.952584,-75.165222);
INSERT INTO north_american_cities(city,country,population,latitude,longitude) VALUES ('Havana','Cuba',2106146,23.05407,-82.345189);
INSERT INTO north_american_cities(city,country,population,latitude,longitude) VALUES ('Mexico City','Mexico',8555500,19.432608,-99.133208);
INSERT INTO north_american_cities(city,country,population,latitude,longitude) VALUES ('Phoenix','United States',1513367,33.448377,-112.074037);
INSERT INTO north_american_cities(city,country,population,latitude,longitude) VALUES ('Los Angeles','United States',3884307,34.052234,-118.243685);
INSERT INTO north_american_cities(city,country,population,latitude,longitude) VALUES ('Ecatepec de Morelos','Mexico',1742000,19.601841,-99.050674);
INSERT INTO north_american_cities(city,country,population,latitude,longitude) VALUES ('Montreal','Canada',1717767,45.501689,-73.567256);
INSERT INTO north_american_cities(city,country,population,latitude,longitude) VALUES ('Chicago','United States',2718782,41.878114,-87.629798);


CREATE TABLE employees(
   role           VARCHAR(8) NOT NULL
  ,name           VARCHAR(10) NOT NULL
  ,building       VARCHAR(2) NOT NULL
  ,years_employed INTEGER  NOT NULL
);

INSERT INTO employees(role,name,building,years_employed) VALUES ('Engineer','Becky A.','1e',4);
INSERT INTO employees(role,name,building,years_employed) VALUES ('Engineer','Dan B.','1e',2);
INSERT INTO employees(role,name,building,years_employed) VALUES ('Engineer','Sharon F.','1e',6);
INSERT INTO employees(role,name,building,years_employed) VALUES ('Engineer','Dan M.','1e',4);
INSERT INTO employees(role,name,building,years_employed) VALUES ('Engineer','Malcom S.','1e',1);
INSERT INTO employees(role,name,building,years_employed) VALUES ('Artist','Tylar S.','2w',2);
INSERT INTO employees(role,name,building,years_employed) VALUES ('Artist','Sherman D.','2w',8);
INSERT INTO employees(role,name,building,years_employed) VALUES ('Artist','Jakob J.','2w',6);
INSERT INTO employees(role,name,building,years_employed) VALUES ('Artist','Lillia A.','2w',7);
INSERT INTO employees(role,name,building,years_employed) VALUES ('Artist','Brandon J.','2w',7);
INSERT INTO employees(role,name,building,years_employed) VALUES ('Manager','Scott K.','1e',9);
INSERT INTO employees(role,name,building,years_employed) VALUES ('Manager','Shirlee M.','1e',3);
INSERT INTO employees(role,name,building,years_employed) VALUES ('Manager','Daria O.','2w',6);


CREATE TABLE buildings(
   building_name VARCHAR(2) NOT NULL PRIMARY KEY
  ,capacity      INTEGER  NOT NULL
);
INSERT INTO buildings(Building_name,Capacity) VALUES ('1e',24);
INSERT INTO buildings(Building_name,Capacity) VALUES ('1w',32);
INSERT INTO buildings(Building_name,Capacity) VALUES ('2e',16);
INSERT INTO buildings(Building_name,Capacity) VALUES ('2w',20);


CREATE TABLE boxoffice(
   movie_id            INTEGER  NOT NULL PRIMARY KEY 
  ,rating              NUMERIC(3,1) NOT NULL
  ,domestic_sales      INTEGER  NOT NULL
  ,international_sales INTEGER  NOT NULL
);
INSERT INTO boxoffice(movie_id,rating,domestic_sales,international_sales) VALUES (5,8.2,380843261,555900000);
INSERT INTO boxoffice(movie_id,rating,domestic_sales,international_sales) VALUES (14,7.4,268492764,475066843);
INSERT INTO boxoffice(movie_id,rating,domestic_sales,international_sales) VALUES (8,8,206445654,417277164);
INSERT INTO boxoffice(movie_id,rating,domestic_sales,international_sales) VALUES (12,6.4,191452396,368400000);
INSERT INTO boxoffice(movie_id,rating,domestic_sales,international_sales) VALUES (3,7.9,245852179,239163000);
INSERT INTO boxoffice(movie_id,rating,domestic_sales,international_sales) VALUES (6,8,261441092,370001000);
INSERT INTO boxoffice(movie_id,rating,domestic_sales,international_sales) VALUES (9,8.5,223808164,297503696);
INSERT INTO boxoffice(movie_id,rating,domestic_sales,international_sales) VALUES (11,8.4,415004880,648167031);
INSERT INTO boxoffice(movie_id,rating,domestic_sales,international_sales) VALUES (1,8.3,191796233,170162503);
INSERT INTO boxoffice(movie_id,rating,domestic_sales,international_sales) VALUES (7,7.2,244082982,217900167);
INSERT INTO boxoffice(movie_id,rating,domestic_sales,international_sales) VALUES (10,8.3,293004164,438338580);
INSERT INTO boxoffice(movie_id,rating,domestic_sales,international_sales) VALUES (4,8.1,289916256,272900000);
INSERT INTO boxoffice(movie_id,rating,domestic_sales,international_sales) VALUES (2,7.2,162798565,200600000);
INSERT INTO boxoffice(movie_id,rating,domestic_sales,international_sales) VALUES (13,7.2,237283207,301700000);