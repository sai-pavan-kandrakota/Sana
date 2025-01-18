CREATE TABLE filter_criteria_master (
criteria_id int NOT NULL ,
criteria_name varchar(100) NOT NULL,
PRIMARY KEY (criteria_id),
UNIQUE (criteria_id,criteria_name)
)
