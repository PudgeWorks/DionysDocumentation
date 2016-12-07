use dionys;
drop table dionys.users;

create table dionys.users (
id int not null AUTO_INCREMENT,
nick NVARCHAR(11) NOT NULL UNIQUE,
fname NVARCHAR(50) NOT NULL,
lname NVARCHAR(50) NOT NULL,
sex BOOLEAN NOT NULL,
age int NULL,
pic_href NVARCHAR(150) NULL,
url NVARCHAR(150) NULL,
bio NVARCHAR(250) NULL,
venue_key INT NULL,
password_hash nvarchar(128) NOT NULL,
salt NVARCHAR(128) NOT NULL,
CONSTRAINT FK_venue_key FOREIGN KEY (venue_key) REFERENCES venues(id),
PRIMARY KEY ( id ) );

create table dionys.venue (
id INT NOT NULL AUTO_INCREMENT,
venue_name NVARCHAR(25) NOT NULL UNIQUE,
latitude DOUBLE NOT NULL,
longitude DOUBLE NOT NULL,
bio NVARCHAR(255) NULL,
PRIMARY KEY (id) );