use environmentsurveydb;

create table users(
	userID int(10) not null unique auto_increment primary key,
    name nvarchar(30),
    username nvarchar(30) not null unique,
    role nvarchar(10) not null,
    rollno nvarchar(20),
    dateOfJoin nvarchar(30),
    classSpec nvarchar(30),
	specification nvarchar(30),
    passwordHash nvarchar(30) not null,
    createdAt datetime not null default current_timestamp,
    updatedAt datetime not null default current_timestamp on update current_timestamp

);

select * from users;

create table subscribers (
	subscriberID int(10) not null unique auto_increment primary key,
    email nvarchar(30) not null unique,
	createdAt datetime not null default current_timestamp,
    updatedAt datetime not null default current_timestamp on update current_timestamp
);


select * from subscribers;

create table surveys (
	surveyID int(10) not null unique auto_increment primary key,
    surveyName nvarchar(30) not null,
    surveyImg blob not null,
    surveyDescription nvarchar(50) not null,
    expiresOn nvarchar(20) not null,
	createdAt datetime not null default current_timestamp,
    updatedAt datetime not null default current_timestamp on update current_timestamp
);

