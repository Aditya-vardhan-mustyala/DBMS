
CREATE TABLE `supplier`
(
 `supp_id`       int NOT NULL ,
 `supp_name`     varchar(45) NOT NULL ,
 `supp_location` varchar(45) NOT NULL ,

PRIMARY KEY (`supp_id`)
);

CREATE TABLE `customer`
(
 `cust-id`   int NOT NULL ,
 `cust_name` varchar(45) NOT NULL ,
 `cust_add`  varchar(45) NOT NULL ,

PRIMARY KEY (`cust-id`)
);


CREATE TABLE `item`
(
 `item_id`    int NOT NULL ,
 `item_name`  varchar(45) NOT NULL ,
 `item_brand` varchar(45) NOT NULL ,
 `specs`      varchar(45) NOT NULL ,
 `supp_id`    int NOT NULL ,

PRIMARY KEY (`item_id`),
KEY `fkIdx_59` (`supp_id`),
CONSTRAINT `FK_58` FOREIGN KEY `fkIdx_59` (`supp_id`) REFERENCES `supplier` (`supp_id`)
);


CREATE TABLE `order`
(
 `order_id`      int NOT NULL ,
 `order_details` varchar(45) NOT NULL ,

PRIMARY KEY (`order_id`)
);





CREATE TABLE `order_contains`
(
 `item_id`  int NOT NULL ,
 `order_id` int NOT NULL ,

KEY `fkIdx_67` (`item_id`),
CONSTRAINT `FK_66` FOREIGN KEY `fkIdx_67` (`item_id`) REFERENCES `item` (`item_id`),
KEY `fkIdx_70` (`order_id`),
CONSTRAINT `FK_69` FOREIGN KEY `fkIdx_70` (`order_id`) REFERENCES `order` (`order_id`),
PRIMARY KEY (`item_id`,`order_id`)
);


CREATE TABLE `cust_orders`
(
 `cust-id`   int NOT NULL ,
 `order_id`  int NOT NULL ,
 `orderdate` datetime NOT NULL ,

KEY `fkIdx_80` (`cust-id`),
CONSTRAINT `FK_79` FOREIGN KEY `fkIdx_80` (`cust-id`) REFERENCES `customer` (`cust-id`),
KEY `fkIdx_83` (`order_id`),
CONSTRAINT `FK_82` FOREIGN KEY `fkIdx_83` (`order_id`) REFERENCES `order` (`order_id`),
PRIMARY KEY (`cust-id`,`order_id`),
unique (`cust-id`,`orderdate`)
);