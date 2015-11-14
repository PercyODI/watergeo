load data local infile 'locadd.csv' 
into table res_address 
fields terminated by ',' 
enclosed by '' 
lines terminated by '\r\n' 
ignore 1 lines (locationid, address);

load data local infile 'usage 2012.csv' 
into table res_usage
fields terminated by ',' 
enclosed by '' 
lines terminated by '\r\n'
ignore 1 lines (locationid, month, year, water_usage);

load data local infile 'usage 2013.csv' 
into table res_usage
fields terminated by ',' 
enclosed by '' 
lines terminated by '\r\n'
ignore 1 lines (locationid, month, year, water_usage);

load data local infile 'usage 2014.csv' 
into table res_usage
fields terminated by ',' 
enclosed by '' 
lines terminated by '\r\n'
ignore 1 lines (locationid, month, year, water_usage);