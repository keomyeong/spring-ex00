use spr1;

create TABLE tbl_tx_test1(
	name VARCHAR(5)
);


INSERT INTO tbl_tx_test1 (name) VALUE ('abcde');
INSERT INTO tbl_tx_test1 (name) VALUE ('abcdef');

SELECT * FROM tbl_tx_test1;

DELETE FROM tbl_tx_test1;

-- 게시물 번호로 댓글들 지우기
DELETE FROM tbl_reply
WHERE bno = #{bno};
