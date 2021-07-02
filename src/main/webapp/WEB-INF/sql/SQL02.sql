use spr1;

select * from tbl_board
order by bno  DESC LIMIT 0, 5;
select * from tbl_board
order by bno  DESC LIMIT 5, 5;
select * from tbl_board
order by bno  DESC LIMIT 10, 5;
select * from tbl_board
order by bno  DESC LIMIT 15, 5;

select * from tbl_board
order by bno  DESC LIMIT 5 * (n-1), 5; -- 이런식으로 작성

select * from tbl_board;
INSERT INTO tbl_board (title, content, writer)
VALUES('LOVE LOVE', 'LOVE LOVE', 'LOVE');