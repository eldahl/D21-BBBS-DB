USE BBBS;

ALTER TABLE Customer ADD createdAt DATE NOT NULL;

ALTER TABLE Booking ADD createdAt DATE NOT NULL;
ALTER TABLE Booking ADD reservationTimeOut BOOLEAN NOT NULL;