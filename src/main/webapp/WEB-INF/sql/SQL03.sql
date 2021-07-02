use spr1;

SELECT * FROM tbl_board
ORDER BY bno DESC;

-- 제목 검색
SELECT * FROM tbl_board
WHERE title LIKE '%LOVE LOVE%'
OR content LIKE '%LOVE LOVE%' 
OR writer LIKE '%LOVE%' 
ORDER BY bno asc
LIMIT 0, 40;

SELECT * FROM tbl_board
WHERE title LIKE '%java%'
ORDER BY bno desc;