CREATE TABLE filter_criteria_value (
criteria_value_id varchar(50) NOT NULL ,
name varchar(100) NOT NULL,
criteria_id int NOT NULL ,
PRIMARY KEY (criteria_value_id),
UNIQUE KEY (criteria_value_id,name),
FOREIGN KEY (criteria_id) REFERENCES filter_criteria_master (criteria_id)
	ON DELETE CASCADE )


