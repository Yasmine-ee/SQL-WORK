/* Course Project for Code First for Girls SQL. The project will be inspired by CFG.  */
CREATE DATABASE CFG;
USE CFG;

-- Create table for Staff at CFG
CREATE TABLE Staff (
    id INT NOT NULL,
    staff_Firstname VARCHAR(50) NOT NULL,
    staff_Lastname VARCHAR(50) NOT NULL,
    job_role VARCHAR(50) NOT NULL,
    employment_type VARCHAR(50) NOT NULL
);
INSERT INTO Staff
(id, staff_Firstname, staff_Lastname, job_role, employment_type)
VALUES
(1, 'Sarah', 'Smith', 'CFG Ambassador','Part-time'),
(2, 'Jane','Burc','Course Instructor','Part-Time'),
(3, 'Karen','Gulligdon','Social Media manager','Fulltime'),
(4, 'Anna','Brailsford','CEO','Fulltime'),
(5, 'Paul','Dylan','Course Instructor','Part-Time');

-- Create table for Courses avaible at CFG
CREATE TABLE Courses (
    Course_id INT NOT NULL,
    Course_name VARCHAR(50) NOT NULL,
    Course_type varchar(60) NOT NULL,
    Number_of_students int not null,
    Duration_of_course VARCHAR(25) NOT NULL
);

INSERT INTO Courses
(Course_id, Course_name,  Course_type, Number_of_students,Duration_of_course)
VALUES
(0123, 'Sprint JAVASCRIPT','MOOC', 12, '8weeks'),
(0124, 'Sprint AI AND ML','MOOC', 5, '8weeks'),
(0125, 'Sprint DATA SQL','MOOC', 7, '8weeks'),
(0234, 'SOFTWARE ENGINEERING ','CFG degree', 6, '14weeks'),
(0235, 'FULL-STACK DEVELOPER','CFG degree', 8, '14weeks'),
(0236, 'DATA ','CFG degree', 11, '14weeks'),
(0234, 'SOFTWARE ENGINEERING Plus','Masters degree', 2, '4weeks'),
(0235, 'FULL-STACK DEVELOPER plus','Masters degree', 7, '4weeks'),
(0236, 'DATA plus ','Masters degree', 3, '4weeks');

-- Create table for the Sponsors of CFG
CREATE TABLE Sponsors (
    Sponsors_id INT NOT NULL,
    Sponsors_name VARCHAR(80) NOT NULL,
    Course_Sponsored_by varchar(70) NOT NULL,
    Job_Opportunites varchar(70) NOT NULL,
    Regions VARCHAR(80) NOT NULL
);
INSERT INTO Sponsors
(Sponsors_id,Sponsors_name,Course_Sponsored_by, Job_Opportunites,Regions)
VALUES
(687, 'Natwest','CFG degree for SOFTWARE ENGINEERING ', 'Junior Software developers','EDINBURGH & BRISTOL'),
(765, 'Campgemini','CFG degree for DATA', 'Data anyalst and consultant','LONDON'),
(256, 'Tesco Bank','CFG degree for FULL-STACK DEVELOPER',  'mobile app developer','BELFAST'),
(901, 'Redkite','CFG degree and Masters for DATA',  'Data sciencists',' IPSWICH'),
(111, 'Fidelity','CFG degree and Masters for FULL-STACK DEVELOPER',  'front-end developer, back-end developer','LONDON'),
(247, 'PA Consulting','CFG degree and Masters for SOFTWARE ENGINEERING',  'Business Intelligence & Cloud Consultant','LONDON & BIRMINGHAM'),
(769, 'Selfridges','Sprint DATA SQL',  'NA','KENT'),
(890, 'Morgan Stanley', 'Sprint AI AND ML','NA','MANCHESTER'),
(920, 'GCHQ ', 'Sprint JAVASCRPIT','NA','UK'),
(347, 'Goldman Sachs','Sprint AI AND ML ',  'NA','UK');

-- Create table for the Students of CFG 
CREATE TABLE StudentsforMOOC (
    Students_id INT NOT NULL,
    Students_Firstname VARCHAR(50) NOT NULL,
    Students_Lastname VARCHAR(50) NOT NULL,
    Course_Student_Took varchar(60) NOT NULL,
    Ethincity varchar(80) NOT NULL,
    Region VARCHAR(50) NOT NULL,
    Age int not null,
    Finish_course boolean
);
INSERT INTO StudentsforMOOC
(Students_id, Students_Firstname, Students_Lastname,
 Course_Student_Took,Ethincity,Region,Age, Finish_course )
 VALUES
  (92, 'Zora', 'Kou', 'Sprint JAVASCRIPT','White', 'Manchester','27',TRUE),
  (93, 'Ines', 'Amara', 'Sprint JAVASCRIPT', 'Asian','Manchester','24',TRUE),
   (94, 'Zoe', 'Bruno', 'Sprint JAVASCRIPT','White', 'Manchester','20',TRUE),
    (95, 'Malika', 'Mactommaniy', 'Sprint JAVASCRIPT','White', 'Manchester','18',TRUE),
     (96, 'Sasha', 'Fred', 'Sprint JAVASCRIPT','White', 'Manchester','21',TRUE),
      (97, 'Amira', 'Saka', 'Sprint JAVASCRIPT','White ', 'Manchester','23',TRUE),
 (99, 'Sabrina', 'Ramsdale', 'Sprint JAVASCRIPT','MIXED Ethnicity', 'LONDON','21',TRUE),
  (98, 'Donya', 'Shaw', 'Sprint JAVASCRIPT','Asian', 'LONDON','28',TRUE),
   (91, 'Racheal', 'Casmerio', 'Sprint JAVASCRIPT','Carribean', 'LONDON','24',TRUE),
    (90, 'Helen', 'Matrial', 'Sprint JAVASCRIPT','Carribean', 'LONDON','22',false),
     (901, 'Anna', 'Magurie', 'Sprint JAVASCRIPT','White', 'LONDON','19',false),
      (902, 'Kamila', 'Elanga', 'Sprint JAVASCRIPT','Asian', 'LONDON','26',TRUE),

 (17, 'Sally', 'Watson', 'Sprint AI AND ML','White', 'Manchester','27',TRUE),
  (18, 'Daisy', 'Collen', 'Sprint AI AND ML','MIXED Ethnicity', 'Manchester','24',TRUE),
   (19, 'Safforn', 'Allison', 'Sprint AI AND ML','White', 'Manchester','20',TRUE),
    (20, 'Mel', 'DaSliva', 'Sprint AI AND ML','White', 'Manchester','18',TRUE),
     (21, 'Maria', 'Ferenadas', 'Sprint AI AND ML','White', 'Manchester','21',TRUE),
     
 (87, 'Yasmine', 'Calvert', 'Sprint DATA SQL','MIXED Ethnicity', 'LONDON','21',TRUE),
  (88, 'Samatha', 'Owen', 'Sprint DATA SQL','White', 'LONDON','28',TRUE),
   (89, 'Lily', 'Samson', 'Sprint DATA SQL','Carribean', 'LONDON','24',TRUE),
    (86, 'Sarayya', 'Scanterburry', 'Sprint DATA SQL','Carribean', 'LONDON','22',false),
     (85, 'Natalie', 'Hawkins', 'Sprint DATA SQL','White', 'LONDON','19',false),
      (84, 'Angel', 'Smith', 'Sprint DATA SQL','White', 'LONDON','26',TRUE);
      -- To see how many completed the course? 
      SELECT Finish_course,
      Course_Student_Took
      FROM StudentsforMOOC;
         -- To see what ethnicities took part in the MOOC 
         SELECT distinct Ethincity
      From StudentsforMOOC;
      
      -- If I wanted to update my values within my tables I would use the Update function and set the variable and where i would want to update it
      -- To only see those who completed it 
	      SELECT Finish_course,
      Course_Student_Took
      FROM StudentsforMOOC
      WHERE Finish_course = 1;
      
	SELECT Students_Firstname, Students_Lastname
    FROM  StudentsforMOOC
    Where Students_Firstname
    LIKE 'M%';
    
    -- TO SHOW HOW MANY FINISHED THE COURSE
    SELECT 
    SUM(Finish_course)
    FROM StudentsforMOOC;

SELECT 
COUNT(distinct  Course_Student_Took),
 Course_Student_Took
FROM StudentsforMOOC
group by  Course_Student_Took;



CREATE VIEW Courses_withCFG
AS
SELECT Sponsors_name,Course_Sponsored_by, Job_Opportunites,Regions
FROM Sponsors;

SELECT * 
FROM Courses_withCFG;

/*
- This code has a problem INSERT INTO Courses_withCFG
	(Sponsors_name,Course_Sponsored_by, Job_Opportunites,Regions)
VALUES ('GOV.UK', ' CFG degree for Data', 'Government anaylsis', 'London');
*/


      
      
      
      
      
      
      
      
      

