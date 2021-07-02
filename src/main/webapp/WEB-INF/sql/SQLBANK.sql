use spr1;
CREATE TABLE bambank(
bno INT PRIMARY KEY AUTO_INCREMENT,
id VARCHAR(50) UNIQUE NOT null,
password VARCHAR(50) NOT null,
AccountNUM VARCHAR(50) UNIQUE not null,
balance LONG,
regdate TIMESTAMP DEFAULT NOW(),
updatedate TIMESTAMP DEFAULT NOW()
);
SELECT*FROM bambank;
INSERT INTO bambank (id, password, AccountNUM, balance)
VALUES('user01', 'user01', '10-1234-1234', 12000);