drop database if exists hotel_booking;
create database hotel_booking;
use hotel_booking;

CREATE TABLE `hotel`
(
 `hotel_id`       int NOT NULL ,
 `hotel_name`     varchar(45) NOT NULL ,
 `hotel_location` varchar(45) NOT NULL ,

PRIMARY KEY (`hotel_id`)
);
CREATE TABLE `customer`
(
 `customer_id`   int NOT NULL ,
 `customer_name` varchar(45) NOT NULL ,
 `customer_type` varchar(45) NOT NULL ,
 `hotel_id`      int NOT NULL ,

PRIMARY KEY (`customer_id`),
KEY `fkIdx_44` (`hotel_id`),
CONSTRAINT `FK_43` FOREIGN KEY `fkIdx_44` (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
constraint check_val check (customer_type in ("first time user", "loyal customer"))
);

