
CREATE TABLE `customer`
(
 `customer_id`   int NOT NULL ,
 `customer_name` varchar(45) NOT NULL ,
 `address`       varchar(45) NOT NULL ,
 `email`         varchar(45) NOT NULL ,

PRIMARY KEY (`customer_id`)
);



CREATE TABLE `Train`
(
 `train_no`   int NOT NULL ,
 `train_name` varchar(45) NOT NULL ,
 `from`       varchar(45) NOT NULL ,
 `to`         varchar(45) NOT NULL ,

PRIMARY KEY (`train_no`)
);


CREATE TABLE `ticket`
(
 `ticket_id`     int NOT NULL ,
 `customer_id_1` int NOT NULL ,
 `train_no`      int NULL ,
 `status`        varbinary(45) NOT NULL ,
 `datee`          datetime NOT NULL ,
 

PRIMARY KEY (`ticket_id`),
KEY `fkIdx_22` (`customer_id_1`),
CONSTRAINT `FK_21` FOREIGN KEY `fkIdx_22` (`customer_id_1`) REFERENCES `customer` (`customer_id`),
KEY `fkIdx_25` (`train_no`),
CONSTRAINT `FK_24` FOREIGN KEY `fkIdx_25` (`train_no`) REFERENCES `Train` (`train_no`),
constraint ck_val check ((status in ("reserved","unreserved")) and
 								((status="reserved" and  train_no is NOT NULL ) or
                               (status="unreserved" and train_no is null))),
unique key traindate (customer_id_1,datee)
);


