
create table users(
    user_name varchar(100)  not null,
    last_name varchar(100) ,
    email      varchar(255) unique not null ,
    password text
)
-- drop table users;
