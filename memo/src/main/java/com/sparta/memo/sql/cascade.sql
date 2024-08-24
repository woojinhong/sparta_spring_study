/*
👉 STUDENT 테이블에서 s1 수강생을 삭제했을 때 EXAM에 있는 s1수강생의 시험성적과 MANAGER의 managerA가 관리하는 수강생 목록에 자동으로 삭제될 수 있도록 하세요.

- ALTER, DROP, MODIFY, CASCADE 를 사용하여 EXAM, MANAGER 테이블을 수정합니다.
*/

-- Exam 제약 조건 이름 확인
SHOW CREATE TABLE EXAM;
-- 제약 (외래 키 삭제)
ALTER TABLE EXAM
DROP FOREIGN KEY exam_fk_student_code;
-- 제약 조건 추가
ALTER TABLE EXAM
    ADD CONSTRAINT exam_fk_student_code FOREIGN KEY (student_code)
        REFERENCES STUDENT(student_code)
        ON DELETE CASCADE;

SHOW CREATE TABLE MANAGER;

ALTER TABLE MANAGER
DROP FOREIGN KEY manager_fk_student_code;

ALTER TABLE MANAGER
    ADD CONSTRAINT manager_fk_student_code FOREIGN KEY (student_code)
        REFERENCES STUDENT(student_code)
        ON DELETE CASCADE;

/*
MySql은 제약 조건 변경 시 삭제 후, 새로운 제약 조건을 추가 해야합니다.
OnDeleteCascade = 부모와 참조된 자식 테이블의 관련된 행들이 자동으로 삭제
*/