

-- Drops the database if it already exists --
DROP DATABASE IF EXISTS questival_db;

-- Create the database for QUESTival
CREATE DATABASE questival_db;
USE questival_db;

-- Create user table.
CREATE TABLE user (
  id int NOT NULL AUTO_INCREMENT,
  attendee_name varchar(100) NOT NULL,
  PRIMARY KEY (id)
);

-- Create event table.
CREATE TABLE event (
  id int NOT NULL AUTO_INCREMENT,
  event_name varchar(255) NOT NULL,
  event_desc varchar(255) NOT NULL,
  event_location varchar (255) NOT NULL, 
  event_date varchar  (20) NOT NULL,
  PRIMARY KEY (id)
);

-- Create interest table.
CREATE TABLE interest (
  id int NOT NULL AUTO_INCREMENT,
  interest varchar(255) NOT NULL,
  interest_desc varchar(255) NOT NULL,
  PRIMARY KEY (id)
);

--Create attendeeInt table.
CREATE TABLE attendeeInt (
  id int NOT NULL AUTO_INCREMENT,
  attendee_name varchar(100) NOT NULL,
  PRIMARY KEY (id)
  FOREIGN KEY
  (interest) REFERENCES interest
  (interest),

);

--Create attendeeEvent table.
CREATE TABLE attendeeEvent (
  id int NOT NULL AUTO_INCREMENT,
  attendee_name varchar(100) NOT NULL,
  PRIMARY KEY (id)
  FOREIGN KEY
  (event_name) REFERENCES event
  (event_name),

);