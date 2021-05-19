CREATE TABLE `branch`
(
 `brach_id`       int NOT NULL ,
 `branch_name`    varchar(45) NOT NULL ,
 `branch_address` varchar(45) NOT NULL ,

PRIMARY KEY (`brach_id`)
);



CREATE TABLE `account`
(
 `acoount_no`    int NOT NULL ,
 `account_type`  varchar(45) NOT NULL ,
 `brach_id`      int NOT NULL ,
 `creation_date` date NOT NULL ,

PRIMARY KEY (`acoount_no`),
KEY `fkIdx_128` (`brach_id`),
CONSTRAINT `FK_127` FOREIGN KEY `fkIdx_128` (`brach_id`) REFERENCES `branch` (`brach_id`)
);

CREATE TABLE `customer`
(
 `cust_id`      int NOT NULL ,
 `cust_name`    varchar(45) NOT NULL ,
 `cust_age`     int NOT NULL ,
 `cust_address` varchar(45) NOT NULL ,

PRIMARY KEY (`cust_id`)
);

CREATE TABLE `cust_accounts`
(
 `cust_id`    int NOT NULL ,
 `acoount_no` int NOT NULL ,

KEY `fkIdx_140` (`cust_id`),
CONSTRAINT `FK_139` FOREIGN KEY `fkIdx_140` (`cust_id`) REFERENCES `customer` (`cust_id`),
KEY `fkIdx_143` (`acoount_no`),
CONSTRAINT `FK_142` FOREIGN KEY `fkIdx_143` (`acoount_no`) REFERENCES `account` (`acoount_no`),
PRIMARY KEY (`cust_id`,`acoount_no`)
);

