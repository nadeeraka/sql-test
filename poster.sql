
create table users(
    user_name varchar(100)  not null,
    last_name varchar(100) ,
    email      varchar(255) unique not null ,
    password text
)
-- drop table users;
insert into  users (user_name, last_name, email, password)
values ('bob','bobiee', 'bob@bob.com','q2w3e4^%$$$£r5t£$%6y7u8i90"£')
