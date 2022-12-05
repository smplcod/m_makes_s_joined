drop table cities cascade;
drop table customers;

create table cities (
id serial primary key,
city varchar(30)  not null,
country varchar(30)  not null
);

create table customers (
id serial primary key,
city INTEGER references cities (id),
first_name varchar(30) not null,
last_name varchar(30) not null
);

insert into cities (city, country)
values ('Colorado', 'USA');

insert into customers (city, first_name, last_name)
values (1, 'Ivan', 'Ivanov');
