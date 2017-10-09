CREATE DATABASE `greenspacedb` /*!40100 DEFAULT CHARACTER SET utf8 */;
use greenspacedb;

create table Admin
(

	userID int(8) not null auto_increment primary key,
	username nvarchar(30) not null,
	passwordHash nvarchar(50) not null,
	createdAt date not null,
	updatedAt date not null

);

create table Users
(
	userID nvarchar(30) not null primary key,
	name nvarchar(30) not null,
	username nvarchar(30) not null unique,
	passwordHash nvarchar(50) not null,
	class nvarchar(20) not null,
	specification nvarchar(20) not null,
	createdAt date not null,
	updatedAt date not null
);

select* from users;
select * from admin;

alter table admin
modify createdAt datetime DEFAULT CURRENT_TIMESTAMP;

alter table admin
modify updatedAt datetime DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP;

delete from admin;

ALTER TABLE admin MODIFY COLUMN userID INT(30) AUTO_INCREMENT;
ALTER TABLE admin AUTO_INCREMENT = 1001;

alter table users
modify createdAt datetime DEFAULT CURRENT_TIMESTAMP;

alter table users
modify updatedAt datetime DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP;

alter table users add column rollno varchar(30);
alter table users add column dateOfJoin varchar(30) after rollno;

delete from users where passwordHash='zdd';