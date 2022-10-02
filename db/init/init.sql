CREATE DATABASE IF NOT EXISTS dibid;
USE dibid;


-- INSERT AND INITIALIZE COUNTRIES

CREATE TABLE IF NOT EXISTS countries (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(64) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO countries(name) VALUES
('Greece'),
('Germany'),
('United Kingdom'),
('France'),
('Italy'),
('Spain'),
('Ukraine'),
('Poland'),
('Russia'),
('Romania'),
('Netherlands'),
('Belgium'),
('Czech Republic'),
('Portugal'),
('Sweden'),
('Hungary'),
('Belarus'),
('Austria'),
('Serbia'),
('Switzerland'),
('Bulgaria'),
('Denmark'),
('Finland'),
('Slovakia'),
('Norway'),
('Ireland'),
('Croatia'), 
('Moldova'), 
('Bosnia and Herzegovina'),
('Albania'),
('Lithuania'),
('Slovenia'),
('Latvia'),
('Estonia'),
('Montenegro'),
('Luxembourg'),
('Malta'),
('Iceland');


-- INITIALIZE USERS AND INSERT ADMIN

CREATE TABLE IF NOT EXISTS users (
	username VARCHAR(64) NOT NULL,
	password VARCHAR(64) NOT NULL,
	email VARCHAR(64) NOT NULL,
	phone VARCHAR(64) NOT NULL,
	tin VARCHAR(64) NOT NULL,
	countryId INT NOT NULL,
	address VARCHAR(64) NOT NULL,
	validated BOOL,
	longitude FLOAT,
	latitude FLOAT,
	admin BOOL,
	name VARCHAR(64) NOT NULL,
	surname VARCHAR(64) NOT NULL,
	location VARCHAR(64) NOT NULL,
	sellerRating INT NOT NULL,
	bidderRating INT NOT NULL,
	lastAccessedMessages TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY(countryId) REFERENCES countries(id),
	PRIMARY KEY (username)
);

INSERT INTO users VALUES (
'admin',
'admin',
'admin@mail.com',
'6969696969',
'165432100',
1,
'Home',
1,
0,
0,
1,
'Admin',
'Admin',
'Athens',
0,
0,
'2022-01-01 00:00:00');


-- INITIALIZE MESSAGES

CREATE TABLE IF NOT EXISTS messages (
    id INT AUTO_INCREMENT NOT NULL,
    messageText VARCHAR(64) NOT NULL,
    timeStamp TIMESTAMP NOT NULL,
    senderUsername VARCHAR(64) NOT NULL,
    receiverUsername VARCHAR(64) NOT NULL,
    FOREIGN KEY(senderUsername) REFERENCES users(username),
    FOREIGN KEY(receiverUsername) REFERENCES users(username),
    PRIMARY KEY (id)
);


-- INITIALIZE AND INSERT CATEGORIES

CREATE TABLE IF NOT EXISTS categories (
	id INT AUTO_INCREMENT NOT NULL,
	name VARCHAR(64) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO categories(name) VALUES ('Electronics'),('Home and Garden'),('Fashion'),('Sports'),('Other');