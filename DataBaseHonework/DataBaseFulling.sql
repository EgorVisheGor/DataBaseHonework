INSERT INTO discipline (discipline_name)
Values ('тервер');

INSERT INTO discipline (discipline_name)
Values ('базы данных');

INSERT INTO discipline (discipline_name)
Values ('ОРИС');

INSERT INTO discipline (discipline_name)
Values ('.NET');

INSERT INTO discipline (discipline_name)
Values ('Физкультура');

INSERT INTO faculty (sname, lname, address, dean, deanphonenumber)
VALUES ( 'ИТИС', 'Институт информационных технологий и интиллектуальных систем', 'Кремлевская 35', 'Абрамский',
        '79173333333');

INSERT INTO faculty (sname, lname, address, dean, deanphonenumber)
VALUES ( 'ИУЭФ', 'Институт управления, экономики и финансов', 'Бутлерова 4', 'Багаутдинова',
         '78432366954');

INSERT INTO speciality ( faculty_code, sname, studying_degree, studying_form)
Values ( '1', 'программист', 'бакалавр', 'очно');

INSERT INTO speciality ( faculty_code, sname, studying_degree, studying_form)
Values ( '2', 'оценка бизнеса и рисков', 'бакалавр', 'очно');

Insert INTO student ( speciality_code, "name", second_name, middle_name, address, date_of_birth, gender)
VALUES ('1', 'Егор', 'Корольков', 'Викторович', 'Нефтекамск', '28/11/2003', 'M');

Insert INTO student ( speciality_code, "name", second_name, middle_name, address, date_of_birth, gender)
VALUES ('1', 'Глеб', 'Гафеев', '', 'Стерлитамак', '04/09/2003', 'M');

Insert INTO student ( speciality_code, "name", second_name, middle_name, address, date_of_birth, gender)
VALUES ('2', 'Максим', 'Ахметов', 'Фарелович', 'г.Нефтекамск, ул.Ленина, д.6ж', '15/02/2003', 'M');

Insert INTO student ( speciality_code, "name", second_name, middle_name, address, gender)
VALUES ('1', 'Элина', 'Абдрахманова', '', 'Казань', 'Ж');

INSERT INTO studying (discipline_code, student_code, semester, mark)
VALUES ('1', '1', '3', '4');

INSERT INTO studying (discipline_code, student_code, semester, mark)
VALUES ('2', '1', '3', '4');

INSERT INTO studying (discipline_code, student_code, semester, mark)
VALUES ('3', '1', '3', '5');

INSERT INTO studying (discipline_code, student_code, semester, mark)
VALUES ('2', '3', '1', '2');