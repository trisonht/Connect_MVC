GRANT ALL PRIVILEGES ON *.* TO javauser@localhost
    IDENTIFIED BY 'javadude' WITH GRANT OPTION;
create database studentlistmvc;
use studentlistmvc;
create table student (
                         studentId int not null auto_increment primary key,
                         firstName varchar(25),
                         lastName varchar(25),
                         email varchar(100));