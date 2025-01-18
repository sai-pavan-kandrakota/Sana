CREATE TABLE recently_viewed (
  view_id SERIAL,
  users_id int  NOT NULL,
  dataproduct_id int NOT NULL ,
  view_date timestamp DEFAULT NOW(),
  PRIMARY KEY (view_id),
  UNIQUE(users_id,dataproduct_id),
  FOREIGN KEY (users_id) REFERENCES users (users_id) ON DELETE CASCADE,
  FOREIGN KEY (dataproduct_id) REFERENCES dataproduct_info (dataproduct_id) ON DELETE CASCADE
  )
