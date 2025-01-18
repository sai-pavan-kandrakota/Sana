CREATE TABLE favorite (
  favorite_id SERIAL,
  users_id int  NOT NULL,
  dataproduct_id int NOT NULL ,
  PRIMARY KEY (favorite_id),
  FOREIGN KEY (users_id) REFERENCES users (users_id) ON DELETE CASCADE,
  FOREIGN KEY (dataproduct_id) REFERENCES dataproduct_info (dataproduct_id) ON DELETE CASCADE
  )
