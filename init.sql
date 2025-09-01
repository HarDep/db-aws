USE usuarios_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    last_access DATETIME
);

LOAD DATA LOCAL INFILE '/home/ec2-user/db-aws/usuarios.csv'
INTO TABLE users
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id, username);