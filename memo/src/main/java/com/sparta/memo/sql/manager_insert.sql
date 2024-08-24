/*
👉 INSERT를 이용하여 수강생 s1, s2, s3, s4, s5를 관리하는 managerA와
                         s6, s7, s8, s9를 관리하는 managerB를 추가하세요.

- AUTO_INCREMENT 기능을 활용하세요
*/

-- managerA가 관리하는 수강생들 추가
INSERT INTO MANAGER (name, student_code) VALUES
('managerA', 's1'),
('managerA', 's2'),
('managerA', 's3'),
('managerA', 's4'),
('managerA', 's5');

-- managerB가 관리하는 수강생들 추가
INSERT INTO MANAGER (name, student_code) VALUES
('managerB', 's6'),
('managerB', 's7'),
('managerB', 's8'),
('managerB', 's9');