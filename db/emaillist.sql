SHOW TABLES;
DESC emaillist;

--  INSERT
INSERT INTO emaillist VALUES (NULL, '루', '피', 'luffy@gmail.com');

-- READ
SELECT no, first_name, last_name, email FROM emaillist ORDER BY no DESC;

-- delete
DELETE FROM emaillist WHERE no = 4;