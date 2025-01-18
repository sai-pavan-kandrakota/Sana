CREATE TABLE criteria_product_relation (
relation_id varchar(50) NOT NULL ,
criteria_value_id varchar(50) NOT NULL ,
dataproduct_id int NOT NULL ,
PRIMARY KEY (relation_id),
UNIQUE (relation_id),
FOREIGN KEY (criteria_value_id) REFERENCES filter_criteria_value (criteria_value_id)
	ON DELETE CASCADE,
FOREIGN KEY (dataproduct_id) REFERENCES dataproduct_info (dataproduct_id)
	ON DELETE CASCADE
 )
