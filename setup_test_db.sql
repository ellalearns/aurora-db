-- set up test db and test user
-- grant privileges to test user
CREATE DATABASE IF NOT EXISTS `aurora_test_db`;
CREATE USER IF NOT EXISTS 'test'@'localhost' IDENTIFIED BY 'test';
GRANT ALL PRIVILEGES ON `aurora_test_db`.* TO 'test'@'localhost';
FLUSH PRIVILEGES;
GRANT SELECT ON `performance_schema`.* TO 'test'@'localhost';
FLUSH PRIVILEGES;
