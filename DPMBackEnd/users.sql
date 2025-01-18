 CREATE TABLE users (
  users_id int NOT NULL ,
  name varchar(100) NOT NULL,
  active_indicator char(1) NOT NULL DEFAULT 'Y',
  created_date timestamp,
  updated_date timestamp,
  email varchar(100) DEFAULT NULL,
  PRIMARY KEY (users_id),
  UNIQUE(name)
  filter_order varchar(100) DEFAULT 'NA',
  filter_status  varchar(100) DEFAULT 'NA',
  filter_saved_view character  varchar(100) DEFAULT 'NA'
   )
