use spr1;
CREATE TABLE tbl_reply (
	rno int PRIMARY KEY AUTO_INCREMENT,
	bno INT NOT NULL,
	reply VARCHAR(512) not NULL,
	replyer VARCHAR(50) NOT null,
	replyDate TIMESTAMP DEFAULT now(),
	updateDate TIMESTAMP DEFAULT now(),
    FOREIGN KEY (bno) REFERENCES tbl_board(bno)
    );
    SELECT*FROM tbl_reply;
    
    
    SELECT*FROM tbl_board;
    
    SELECT 
    DISTINCT (b.bno)
    FROM tbl_board b JOIN tbl_reply r ON b.bno = r.bno;
    
    SELECT b.bno, b.title, b.content, b.writer, b.regdate, b.updatedate, count(r.rno)
    FROM tbl_board b LEFT JOIN tbl_reply r ON b.bno = r.bno
    GROUP BY b.bno
    ORDER BY b.bno DESC
    LIMIT 0,10;