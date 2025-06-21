CREATE DATABASE `hospital`;
USE `hospital`;

CREATE TABLE doctors (
	doctor_id int,
    doctor_name varchar(30),
    specialty varchar(20),
    day_available varchar(20),
    contact_no varchar(13),
    experience int,
    PRIMARY KEY (doctor_id)
);

CREATE TABLE ward (
	ward_no int,
    floor int,
    beds int,
    nurses int,
    PRIMARY KEY (ward_no)
);

CREATE TABLE patients (
	patient_id int PRIMARY KEY,
    patient_name varchar(20),
    doctor_name varchar(30),
    treatment_date varchar(10),
    ward_no int,
    patient_condition varchar(20),
    fees int,
    FOREIGN KEY (ward_no) REFERENCES ward(ward_no)
);

CREATE TABLE timetable (
	weekday varchar(20),
    doctor_name varchar(20),
    ward_no int,
    time_of_doctor varchar(20),
    FOREIGN KEY (ward_no) REFERENCES ward(ward_no)
);


CREATE TABLE medicines (
	a_date varchar(10),
    doctor_name varchar(30),
    ward_no int,
    injections int,
    medicines int,
    FOREIGN KEY (ward_no) REFERENCES ward(ward_no)
);

INSERT INTO doctors VALUES(1,'Dr.Harsh','Dietician','Monday','9876543210',5);
INSERT INTO doctors VALUES(2,'Dr.Simran','Cardiologist','Tuesday','995671866',6);
INSERT INTO doctors VALUES(3,'Dr.Abhishek','Gynecologist','Monday','8756128765',4);
INSERT INTO doctors VALUES(4,'Dr.Tanuja','Dietician','Tuesday','9875617286',2);
INSERT INTO doctors VALUES(5,'Dr.Sanika','Gynecologist','Monday','9876524516',2);
INSERT INTO doctors VALUES(6,'Dr.Nitish','Neurologist','Saturday','7651862542',4);
INSERT INTO doctors VALUES(7,'Dr.Sanskriti','Dietician','Tuesday','9876545678',5);
INSERT INTO doctors VALUES(8,'Dr.Pranali','Gynecologist','Monday','7689018765',6);
INSERT INTO doctors VALUES(9,'Dr.Paavana','Dietician','Sunday','6789156278',10);
INSERT INTO doctors VALUES(10,'Dr.Devang','Cardiologist','Monday','18976254187',10);
INSERT INTO doctors VALUES(11,'Dr.Rutuja','Dietician','Wednesday','18726578976',5);
INSERT INTO doctors VALUES(12,'Dr.Gayatri','Neurologist','Sunday','98735678176',6);
INSERT INTO doctors VALUES(13,'Dr.Amar','Dietician','Thursday','7890876543',5);
INSERT INTO doctors VALUES(14,'Dr.Aditya','Cardiologist','Friday','6789098765',4);
INSERT INTO doctors VALUES(15,'Dr.Salil','Dietician','Tuesday','9872456789',2);
INSERT INTO doctors VALUES(16,'Dr.Prajwal','Gynecologist','Saturday','9865435671',6);
INSERT INTO doctors VALUES(17,'Dr.Sami','Cardiologist','Friday','9876543245',5);
INSERT INTO doctors VALUES(18,'Dr.Sakshi','Neurologist','Wednesday','9876547892',5);
INSERT INTO doctors VALUES(19,'Dr.Aadinath','Gynecologist','Thursday','9875672897',10);
INSERT INTO doctors VALUES(20,'Dr.Vedant','Cardiologist','Monday','678195278',10);


INSERT INTO ward VALUES(1,1,10,3);
INSERT INTO ward VALUES(2,1,12,4);
INSERT INTO ward VALUES(3,1,13,3);
INSERT INTO ward VALUES(4,1,10,3);
INSERT INTO ward VALUES(5,2,9,2);
INSERT INTO ward VALUES(6,2,8,3);
INSERT INTO ward VALUES(7,2,10,4);
INSERT INTO ward VALUES(8,2,9,3);
INSERT INTO ward VALUES(9,3,13,2);
INSERT INTO ward VALUES(10,3,10,3);
INSERT INTO ward VALUES(11,3,13,2);
INSERT INTO ward VALUES(12,4,10,3);
INSERT INTO ward VALUES(13,4,9,4);


INSERT INTO patients VALUES(1,'shruti','Dr.Simran','01-02-22',1,'Good',200);
INSERT INTO patients VALUES(2,'rahul','Dr.Simran','01-02-22',1,'Good',200);
INSERT INTO patients VALUES(3,'rohit','Dr.Abhishek','01-02-22',2,'Intermediate',400);
INSERT INTO patients VALUES(4,'raj','Dr.Tanuja','01-02-22',3,'Good',200);
INSERT INTO patients VALUES(5,'roshan','Dr.Simran','01-02-22',1,'Intermediate',200);
INSERT INTO patients VALUES(6,'nupur','Dr.Harsh','02-02-22',1,'Bad',100);
INSERT INTO patients VALUES(7,'sahil','Dr.Abhishek','02-02-22',2,'Better',600);
INSERT INTO patients VALUES(8,'shreya','Dr.Vedant','02-02-22',5,'Good',200);
INSERT INTO patients VALUES(9,'tanvi','Dr.Tanuja','03-02-22',3,'Bad',500);
INSERT INTO patients VALUES(10,'dipti','Dr.Simran','03-02-22',1,'Intermediate',400);
INSERT INTO patients VALUES(11,'snehal','Dr.Abhishek','03-02-22',2,'Better',100);
INSERT INTO patients VALUES(12,'abhijit','Dr.Simran','04-02-22',1,'Good',200);
INSERT INTO patients VALUES(13,'anam','Dr.Vedant','04-02-22',5,'Bad',500);
INSERT INTO patients VALUES(14,'sanyukta','Dr.Simran','04-02-22',1,'Intermediate',500);
INSERT INTO patients VALUES(15,'smruti','Dr.Simran','01-03-22',1,'Good',600);
INSERT INTO patients VALUES(16,'siddhesh','Dr.Abhishek','01-03-22',2,'Good',200);
INSERT INTO patients VALUES(17,'krutik', 'Dr.Vedant','01-03-22',5,'Bad',500);
INSERT INTO patients VALUES(18,'jay','Dr.Tanuja','02-03-22',3,'Good',500);
INSERT INTO patients VALUES(19,'jayant','Dr.Simran','02-03-22',1,'Intermediate',200);
INSERT INTO patients VALUES(20,'vineet','Dr.Vedant','01-04-22',5,'Better',400);
INSERT INTO patients VALUES(21,'riddhi','Dr.Abhishek','01-04-22',2,'Bad',200);
INSERT INTO patients VALUES(22,'vishaka','Dr.Harsh','02-05-22',4,'Good',100);
INSERT INTO patients VALUES(23,'sarthak','Dr.Simran','02-05-22',1,'Good',400);
INSERT INTO patients VALUES(24,'yash','Dr.Vedant','02-04-22',5,'Better',500);
INSERT INTO patients VALUES(25,'suraj','Dr.Sanika','04-05-22',6,'Good',200);


INSERT INTO timetable VALUES('Monday','Dr.Harsh',4,'10am');
INSERT INTO timetable VALUES('Tuesday','Dr.Simran',1,'10am');
INSERT INTO timetable VALUES('Wednesday','Dr.Rutuja',7,'11am');
INSERT INTO timetable VALUES('Thursday','Dr.Amar',8,'1pm');
INSERT INTO timetable VALUES('Friday','Dr.Aditya',9,'3pm');
INSERT INTO timetable VALUES('Saturday','Dr.Prajwal',10,'11am');
INSERT INTO timetable VALUES('Sunday','Dr.Paavana',11,'4pm');
INSERT INTO timetable VALUES('Monday','Dr.Sanika',6,'10am');
INSERT INTO timetable VALUES('Tuesday','Dr.Tanuja',3,'4am');
INSERT INTO timetable VALUES('Wednesday','Dr.Sakshi',12,'10pm');
INSERT INTO timetable VALUES('Thursday','Dr.Aadinath',13,'8am');


INSERT INTO medicines VALUES('01-02-22','Dr.Simran',1,20,40);
INSERT INTO medicines VALUES('01-02-22','Dr.Harsh',4,30,50);
INSERT INTO medicines VALUES('01-02-22','Dr.Vedant',5,10,30);
INSERT INTO medicines VALUES('02-02-22','Dr.Abhishek',2,20,40);
INSERT INTO medicines VALUES('02-02-22','Dr.Tanuja',3,40,60);
INSERT INTO medicines VALUES('02-02-22','Dr.Sanika',6,10,35);
INSERT INTO medicines VALUES('02-02-22','Dr.Rutuja',7,34,67);
INSERT INTO medicines VALUES('03-02-22','Dr.Simran',1,20,40);
INSERT INTO medicines VALUES('03-02-22','Dr.Harsh',4,15,43);
INSERT INTO medicines VALUES('03-02-22','Dr.Simran',1,20,40);
INSERT INTO medicines VALUES('01-03-22','Dr.Vedant',5,12,24);
INSERT INTO medicines VALUES('01-03-22','Dr.Simran',1,23,34);
INSERT INTO medicines VALUES('01-03-22','Dr.Abhishek',2,33,45);
INSERT INTO medicines VALUES('02-03-22','Dr.Harsh',4,22,43);
INSERT INTO medicines VALUES('02-03-22','Dr.Simran',1,20,40);
INSERT INTO medicines VALUES('01-04-22','Dr.Vedant',5,20,40);
INSERT INTO medicines VALUES('01-04-22','Dr.Tanuja',3,22,45);