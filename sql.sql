SELECT * FROM gs_an_table WHERE id IN (1, 3, 5);
SELECT * FROM gs_an_table WHERE id >= 4 AND id<=8;
SELECT * FROM gs_an_table WHERE email LIKE '%test1%';
SELECT * FROM gs_an_table ORDER BY indate DESC;
SELECT * FROM gs_an_table WHERE age=20 AND (indate LIKE '2017-05-26%');
SELECT * FROM gs_an_table ORDER BY indate DESC LIMIT 5;
SELECT age, COUNT(age) AS 'COUNT(*)' FROM gs_an_table;

