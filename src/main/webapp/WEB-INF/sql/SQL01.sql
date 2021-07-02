CREATE DATABASE spr1;
use spr1;

CREATE TABLE tbl_board(
bno INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255) NOT null,
content VARCHAR(2000) not null,
writer VARCHAR(50) not NULL,
regdate TIMESTAMP DEFAULT NOW(),
updatedate TIMESTAMP DEFAULT NOW()
);

INSERT INTO tbl_board (title, content, writer)
VALUES('테스트 제목', '테스트 내용', 'user00');

SELECT*FROM tbl_board;

-- 연습
CREATE TABLE tbl_test1(
id INT PRIMARY key AUTO_INCREMENT,
name VARCHAR(255) not null,
age int not null
);
SELECT*FROM tbl_test1;
Insert into tbl_test1 (name, age) VALUES ('geni', 22);
Insert into tbl_test1 (name, age) VALUES ('get', 25);
Insert into tbl_test1 (name, age) VALUES ('girl', 25);