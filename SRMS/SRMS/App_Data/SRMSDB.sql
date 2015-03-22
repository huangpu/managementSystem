use DB_SRMS
-- ×¢ÊÍctrl+k+c È¡Ïû×¢ÊÍctrl+k+u
create table tbl_Users 
(  User_ID char(11) Constraint pk_UserID primary key NOT NULL,
   User_Name nchar(10),
   User_Password nchar(10),
   User_Authority int not null,
   User_Sex nchar(1),
   User_Birth nchar(11),
   User_IdCard char(18) not null,
   User_Politics nchar(4) not null,
   User_institute nvarchar(10) not null,
   User_LastDegree nchar(2),
   User_TechnicalTitle nchar(8),
   User_Cours nvarchar(20),
   User_Search nvarchar(30),
   User_Tel varchar(11),
   User_Mail varchar(20),
   User_Vitae nvarchar(300)
)

create table tbl_InstituteData
(
  Institute_ID varchar(2) constraint pk_InstituteID primary key not null,
  Institute_Name nvarchar(20),
  Institute_dean varchar(20) 
)

create table tbl_CourseData
(
  Course_ID varchar(5) constraint pk_CourseID primary key not null,
  Course_One varchar(3),
  Course_Two varchar(3)
)

create table tbl_ProjectSubmit
(
  Project_ID char(11) constraint pk_ProjectID primary key not null,
  Project_Name nvarchar(50),
  Project_PersonLiable nvarchar(20),
  Project_Institute nvarchar(20),
  Project_Nature nvarchar(20),
  Project_Status nvarchar(10),
  Project_LicenseNo varchar(50),
  Project_Source nvarchar(50),
  Project_StartTime datetime,
  Project_PlanTime datetime,
  Project_ResultForm nvarchar(50),
  Project_SecretGrade nvarchar(10),
  Project_PlanMoney money,
  Project_RatifyMoney money,
  Project_class nvarchar(50),
  Project_CourseOne varchar(3),
  Project_CourseTwo varchar(3),
  Project_Team nvarchar(50),
  Project_Content nvarchar(500),
  Project_History nvarchar(500),
  Project_Innovate nvarchar(300),
)

create table tbl_InterimReport
(
  Project_ID char(11) constraint pk_InterimReport primary key not null,
  Project_Name nvarchar(50),
  Interim_Plan nvarchar(300),
  Interim_Fruit nvarchar(300),
  Interim_Question nvarchar(500),
  Interim_AuditOpinion nvarchar(200)
)

create table tbl_ProjectEnd
(
  Project_ID char(11) constraint pk_ProjectEnd primary key not null,
  Project_Name nvarchar(50),
  Project_Fruit nvarchar(500),
  Project_Content nvarchar(500),
  Project_PlanImplement nvarchar(1000),
  Project_innovation nvarchar(500),
  Project_NextProblem nvarchar(500),
  Project_EndOpinion nvarchar(100)
)

create table tbl_ResultData
(
 User_ID char(11)  ,
 Result_BookNumber nvarchar(20),
 Result_BookNameC nvarchar(20),
 Result_BookNameEn varchar(100),
 Result_CourseID varchar(5),
 Project_Source nvarchar(50),
 Result_class nvarchar(20),
 Result_PublishName nvarchar(30),
 Result_PublishLevel nvarchar(10),
 Result_PublishTime datetime,
 Result_publishNumber varchar(20),
 Result_WordCount varchar(9),
 Project_ID char(11),
 Result_Examine varchar(3)
)

create table tbl_NewsBulletin
(
  News_ID varchar(11) constraint pk_NewsID primary key not null,
  News_Name nvarchar(20),
  News_Time datetime,
  News_Author nvarchar(20),
  News_Content nvarchar(1000)
)

create table tbl_UseMoney
(
  Project_ID char(11) constraint pk_UseMoney primary key not null,
  Money_Totality money,
  Money_Use money,
  Money_surplus money,
  Money_UseDetails nvarchar(500),
  Money_Time datetime
)
































