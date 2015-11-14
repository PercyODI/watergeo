SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS res_address;
CREATE TABLE res_address (
    locationid BIGINT UNSIGNED PRIMARY KEY,
    address varchar(255)
) ENGINE = INNODB;

DROP TABLE IF EXISTS res_usage;
CREATE TABLE res_usage (
    locationid BIGINT UNSIGNED,
    month INT(2),
    year INT(4),
    water_usage INT UNSIGNED,
    CONSTRAINT FOREIGN KEY (locationid) REFERENCES res_address(locationid) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (locationid, month, year)
) ENGINE = INNODB;

SET FOREIGN_KEY_CHECKS=1;

load data local infile './csvFiles/locadd.csv' 
into table res_address 
fields terminated by ',' 
enclosed by '' 
lines terminated by '\r\n' 
ignore 1 lines (locationid, address);

load data local infile './csvFiles/usage 2012.csv' 
into table res_usage
fields terminated by ',' 
enclosed by '' 
lines terminated by '\r\n'
ignore 1 lines (locationid, month, year, water_usage);

load data local infile './csvFiles/usage 2013.csv' 
into table res_usage
fields terminated by ',' 
enclosed by '' 
lines terminated by '\r\n'
ignore 1 lines (locationid, month, year, water_usage);

load data local infile './csvFiles/usage 2014.csv' 
into table res_usage
fields terminated by ',' 
enclosed by '' 
lines terminated by '\r\n'
ignore 1 lines (locationid, month, year, water_usage);