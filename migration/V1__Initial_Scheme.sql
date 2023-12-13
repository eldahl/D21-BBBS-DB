CREATE DATABASE IF NOT EXISTS BBBS;
USE BBBS;

CREATE TABLE Customer (
	id INT NOT NULL AUTO_INCREMENT,
	email VARCHAR(255) NOT NULL UNIQUE,
	firstName VARCHAR(1024) NOT NULL,
	lastName VARCHAR(1024) NOT NULL,
	phone VARCHAR(20) NOT NULL,
	postalCode VARCHAR(10) NOT NULL,
	city VARCHAR(255) NOT NULL,
	address VARCHAR(255) NOT NULL,
	receiveNewsletter BOOLEAN NOT NULL,
	PRIMARY KEY (id),
	INDEX idx_firstName (firstName(255)),
	INDEX idx_lastName (lastName(255))
);

CREATE TABLE Booking (
	id INT NOT NULL AUTO_INCREMENT,
	customerId INT NOT NULL,
	arrivalDate DATE NOT NULL,
	departureDate DATE NOT NULL,
	numberOfPeople INT NOT NULL,
	paid BOOLEAN NOT NULL,
	`comment` VARCHAR(10240) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (customerId) REFERENCES Customer(id),
	INDEX idx_comment (comment(255))
);

CREATE TABLE Room (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	description VARCHAR(2048) NOT NULL,
	capacity INT NOT NULL,
	pricePerNight DOUBLE(10, 2) NOT NULL,
	thumbnailImagePath VARCHAR(2048) NOT NULL,
	PRIMARY KEY (id),
	INDEX idx_description (description(255)),
	INDEX idx_thumpnailPath (thumbnailImagePath(255))
);

CREATE TABLE AdditionalService (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	description VARCHAR(2048) NOT NULL,
	pricePerUnit DOUBLE(10, 2) NOT NULL,
	thumbnailImagePath VARCHAR(2048) NOT NULL,
	PRIMARY KEY (id),
	INDEX idx_description (description(256)),
	INDEX idx_thumpnailPath (thumbnailImagePath(255))
);

CREATE TABLE RoomForBooking (
	id INT NOT NULL AUTO_INCREMENT,
	`date` DATE NOT NULL,
	bookingId INT NOT NULL,
	roomId INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (bookingId) REFERENCES Booking(id),
	FOREIGN KEY (roomId) REFERENCES Room(id)
);

CREATE TABLE AdditionalServiceForBooking (
	id INT NOT NULL AUTO_INCREMENT,
	`date` DATE NOT NULL,
	bookingId INT NOT NULL,
	additionalServiceId INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (bookingId) REFERENCES Booking(id),
	FOREIGN KEY (additionalServiceId) REFERENCES AdditionalService(id)
);

CREATE TABLE AdminUser (
	id INT NOT NULL AUTO_INCREMENT,
	email VARCHAR(255) NOT NULL UNIQUE,
	passwordHash VARCHAR(255) NOT NULL,
	passwordSalt VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
);
