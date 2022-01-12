-- DB 생성
CREATE DATABASE webdb;

-- USER 생성
CREATE USER 'webdb'@'localhost' IDENTIFIED BY 'webdb';

-- USER 권한 부여
GRANT ALL PRIVILEGES ON webdb.* TO 'webdb'@'localhost';