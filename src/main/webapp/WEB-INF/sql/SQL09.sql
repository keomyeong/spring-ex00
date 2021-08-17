create table persistent_logins (
    username varchar(64) not null,
    series varchar(64) primary key,
    token varchar(64) not null,
    last_used timestamp not null
);

desc persistent_logins;
use spr1;
SELECT * FROM tbl_board;
SELECT * FROM tbl_member;
SELECT * FROM tbl_reply;


UPDATE tbl_board
SET writer = 'member';

UPDATE tbl_reply
set replyer = 'member';

ALTER TABLE tbl_board
ADD FOREIGN KEY (writer) REFERENCES tbl_member(userid);

