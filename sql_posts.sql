INSERT INTO posts (title, content, author)
VALUES('test', '테스트', 'admin');

COMMIT;

SELECT * FROM posts;