
create table users(
    id serial primary key ,
    user_name varchar(100)  not null,
    last_name varchar(100) ,
    email      varchar(255) unique not null ,
    password text
);
 drop table users;
insert into  users (id,user_name, last_name, email, password)
values (default,'bob','bobiee', 'bob@bob.com','q2w3e4^%$$$£r5t£$%6y7u8i90"£')

select user_name from users;
-- note this not efficient way
select user_name, last_name, email, password from users;


-- this is the right way
select * from  users;

-- modifying table

alter table users add column age int default null
alter table users drop column  age

