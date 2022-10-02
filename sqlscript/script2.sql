CREATE TABLE student
(
	student_id varchar(30) PRIMARY KEY,
    name varchar(10),
    major varchar(20)

);

CREATE TABLE lecture(

    lecture_id varchar(30),
    foreign key(lecture_id) references student(student_id),
    name varchar(10),
    lecture_name varchar(20)

);

show columns in student;
show columns in lecture;