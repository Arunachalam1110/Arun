create database cart;
use cart;

create table product(pid int identity(101,1),pname varchar(10),price varchar (10), pimage varchar(50));

insert into product values('iphone',10000,'images/iphone.jpg'),('samsungs10',7000,'images/samsung.jpg'),('oneplus7',5000,'images/onplus.jpg');

select * from product;