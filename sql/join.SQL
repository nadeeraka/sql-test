-- inner join
-- The INNER JOIN keyword selects records that have matching values in both tables.

SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

select user_name , title from users inner join  post on  post.author_id = users.id

select title , body from post inner join users u on post.author_id = u.id

select user_name, email from users left join post p on users.id = p.author_id
