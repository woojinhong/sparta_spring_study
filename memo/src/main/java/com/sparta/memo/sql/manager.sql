/*
👉 수강생을 관리하는 MANAGER 테이블을 만들어보세요.

- 컬럼은 총 id, name, student_code 입니다.
- id는 bigint 타입이며 PK입니다.
- name은 최소 2자 이상, varchar 타입, not null 입니다.
- student_code는 STUDENT 테이블을 참조하는 FK이며 not null 입니다.
- FK는 CONSTRAINT 이름을 ‘manager_fk_student_code’ 로 지정해야합니다.
 */

CREATE TABLE MANAGER
(
    id BIGINT PRIMARY KEY COMMENT '매니저 아이디',
    name VARCHAR(50) NOT NULL CHECK (LENGTH(name) >= 2) COMMENT '매니저 이름(2자 이상)',
    student_code VARCHAR(20) NOT NULL COMMENT 'STUDENT 테이블 참조(외래키)',
    CONSTRAINT manager_fk_student_code FOREIGN KEY (student_code) REFERENCES STUDENT(student_code)
);