create table Department(
	DepartmentID int not null auto_increment primary key ,
    DepartmentName varchar(50)
);

create table `Position`(
	PositionID int not null auto_increment primary key,
    PositionName ENUM('Dev','Test','Scrum Master', 'PM')
);

create table `Account`(
	AccountID int not null auto_increment primary key,
	Email varchar(100),
	Username varchar(50),
	Fullname varchar(100),
	DepartmentID int,
	PositionID int,
	CreateData datetime default current_timestamp
);

create table `Group`(
	GroupID int not null auto_increment primary key,
	GroupName varchar(100),
	CreatorID int,
	CreateDate datetime default current_timestamp
);

create table GroupAccount (
	GroupID int,
	AccountID int,
	JoinDate date
);

create table TypeQuestion(
	TypeID int,
	TypeName varchar(50)
);

create table CategoryQuestion(
	CategoryID int not null auto_increment primary key,
	CategoryName varchar(50)
);

create table Question(
	QuestionID int not null auto_increment primary key,
	`Code` int,
	Title varchar(50),
	CategoryID int,
	TypeID int,
	CreatorID int,
	CreateDate datetime default current_timestamp
);

create table Answer(
	AnswerID int not null auto_increment primary key,
	Content varchar(200),
	QuestionID int,
	isCorrect boolean
);

create table Exam(
	ExamID int not null auto_increment primary key,
	`Code` int,
	Title varchar(50),
	CategoryID int,
	Duration varchar(50),
	CreatorID int,
	CreateDate datetime default current_timestamp
);

create table ExamQuestion(
	ExamID int,
	QuestionID int
);