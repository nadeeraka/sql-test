CREATE TABLE celebs (
   id INTEGER,
   name TEXT,
   age INTEGER
);

 INSERT INTO celebs (id, name, age)
VALUES (1, 'Justin Bieber', 22);
INSERT INTO celebs (id, name, age)
VALUES (2, 'Beyonce Knowles', 33);

INSERT INTO celebs (id, name, age)
VALUES (3, 'Jeremy Lin', 26);

INSERT INTO celebs (id, name, age)
VALUES (4, 'Taylor Swift', 26);

SELECT name FROM celebs;

--  ALTER TABLE is a clause that lets you make the specified changes.
ALTER TABLE celebs
ADD COLUMN twitter_handle TEXT;

-- ### Update
-- The UPDATE statement edits a row in a table. You can use the UPDATE statement when you want to change existing records.
UPDATE celebs
SET twitter_handle = '@taylorswift13'
WHERE id = 4;

-- ##Delete
-- The DELETE FROM statement deletes one or more rows from a table. You can use the statement when you want to delete existing records.
DELETE FROM celebs
WHERE twitter_handle IS NULL;

SELECT * FROM celebs;

-- Constraints
-- Constraints that add information about how a column can be used are invoked after specifying the data type for a column. They can be used to tell the database to reject inserted data that does not adhere to a certain restriction.

CREATE TABLE awards (
   id INTEGER PRIMARY KEY,
   recipient TEXT NOT NULL,
   award_name TEXT DEFAULT 'Grammy'
);

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

--selecting

select user_name from users;

select user_name, last_name, email, password from users;


-- select all
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
