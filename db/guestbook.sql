SHOW TABLES;
DESC guestbook;

-- INSERT
INSERT INTO guestbook VALUES (NULL, '천계환', '1234', 'ㅎㅇ', NOW());

-- SELECT
SELECT no, name, DATE_FORMAT(reg_date, "%Y/%m/%d %H:%i:%s") AS reg_date, message
  FROM guestbook
ORDER BY reg_date DESC;

-- DELETE
DELETE FROM guestbook WHERE no = 1 AND password = "1234";