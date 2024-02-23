create table member(
no int auto_increment primary key,
name varchar(80),
password varchar(20),
content varchar(2000),
reg_date datetime
);

INSERT INTO member
VALUES (null,'박종희', '12345', '집가고 싶다 학원오기 싫다 공부하기 싫다',now());

select *
from member;