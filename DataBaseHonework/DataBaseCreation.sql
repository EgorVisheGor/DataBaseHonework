CREATE TABLE faculty
(
    id_faculty      serial primary key,
    sname           varchar(255) not null ,
    lname           varchar(1024),
    dean            varchar(1024),
    address         varchar(255),
    deanPhoneNumber varchar(255) UNIQUE 
);

create table speciality
(
    id_speciality   serial primary key,
    faculty_code    serial REFERENCES faculty (id_faculty),
    sname           varchar(255),
    studying_degree varchar(255),
    studying_form   varchar(255)
);

CREATE TABLE student
(
    id_student      serial PRIMARY key,
    speciality_code serial REFERENCES speciality (id_speciality),
    name            varchar(255) not null ,
    middle_name     varchar(1024) not null ,
    second_name     varchar(1024),
    address         varchar(1024),
    date_of_birth   date null,
    gender          varchar(6)
);

create table discipline
(
    id_discipline   serial primary key,
    discipline_name varchar(255) not null 
);

create table studying
(
    student_code    serial REFERENCES student (id_student),
    discipline_code serial references discipline (id_discipline),
    semester        int2 check(semester>0 AND semester<9),
    mark            int2 check ( mark > 0 AND mark < 6)
);
