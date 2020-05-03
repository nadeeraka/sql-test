
create table users(
    id serial primary key ,
    user_name varchar(100)  not null,
    last_name varchar(100) ,
    email      varchar(255) unique not null ,
    password text
);
 drop table users;
insert into  users (id,user_name, last_name, email, password)
values (default,'bob2','bobiee', 'bob@bob2.com','q2w3e4^%$$$£r5t£$%6y7u8i90"£')

select user_name from users;
-- note this not efficient way
select user_name, last_name, email, password from users;


-- this is the right way
select * from  users;

-- modifying table

alter table users add column age int default 20;
alter table users drop column  age;
--  where
select  email from users where id = 3;
select  * from users where id in (1,2,3);
select user_name from users where  email = 'bob@bob.com' and id =1;

--  coalesce select to null col

select * from users where  coalesce(last_name) = 'nick';
select * from users where  last_name is not null;
-- select NAME from CITY where COUNTRYCODE  =001 and  POPULATION >120000;

--  update
update users set user_name= 'kimKadashian' where id =1;

select *
from users where id =1;

update  users set email='kimK@kim.com',
last_name = 'kadashian',  user_name ='kim' where id =1

update users
set age = 45
where id =1;

select *
from users;

update users set age = age - 10 where age >20

-- delete

delete  from  users where  id = 3;

--  create relation

create table post(
    id serial primary key ,
    title varchar(200) not null ,
    body text default '...',
    author_id int references users(id) not null
)

insert into post (title,body,author_id)
values ('Test', 'bla bala blaa aa ',1);

 select * from users

--delete from users where id = 1;

drop table post;

--    ####### join
-- there are tow main join #inner join #outer join


-- inner join
-- The INNER JOIN keyword selects records that have matching values in both tables.

SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

select user_name , title from users inner join  post on  post.author_id = users.id

select title , body from post inner join users u on post.author_id = u.id

select user_name, email from users left join post p on users.id = p.author_id
