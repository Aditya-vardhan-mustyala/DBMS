CREATE TABLE `actor`
(
 `actor_id`           int NOT NULL ,
 `actor_name`         varchar(45) NOT NULL ,
 `actor_age`          int NOT NULL ,
 `actor_remuneration` int NOT NULL ,

PRIMARY KEY (`actor_id`)
);

CREATE TABLE `movie`
(
 `movie_id`   int NOT NULL ,
 `Movie_name` varchar(45) NOT NULL ,
 `production` varchar(45) NOT NULL ,
 `actor_id`   int NOT NULL ,

PRIMARY KEY (`movie_id`),
KEY `fkIdx_115` (`actor_id`),
CONSTRAINT `FK_114` FOREIGN KEY `fkIdx_115` (`actor_id`) REFERENCES `actor` (`actor_id`)
);

CREATE TABLE `tv_series`
(
 `series_id`   int NOT NULL ,
 `series_name` varchar(45) NOT NULL ,
 `actor_id`    int NOT NULL ,

PRIMARY KEY (`series_id`),
KEY `fkIdx_112` (`actor_id`),
CONSTRAINT `FK_111` FOREIGN KEY `fkIdx_112` (`actor_id`) REFERENCES `actor` (`actor_id`)
);
