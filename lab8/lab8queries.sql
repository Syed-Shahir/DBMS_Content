-- Task # 01
use foodbakers;
alter table campus
add email_id varchar(30);
alter table members
add year_of_joining date;
alter table order_line
add brand varchar(20);
-- Task # 02
alter table position
modify column position char(20);
alter table campus
modify column zip varchar(5);
alter table members
modify column first_name varchar(20);
-- Task # 03
alter table campus
drop column email_id;
alter table members
drop column last_name;
alter table prices
drop column meal_type;
-- Task # 04
alter table campus
rename column campus_name to c_name;
alter table members
add column last_name char(20);
alter table members
rename column last_name to l_name;
-- Task # 05
-- we have to drop or modify foreign jey constraint first
alter table orders drop foreign key  member_id;
drop table members;
drop table prices;
-- Task # 06
rename table campus to campus_detail;
rename table orders to order_detail;

-- Post lab tasks

-- Task # 01
create table book_register(
acc_no varchar(30),
isbn_no varchar(20) not null primary key,
book_title varchar(50),
book_type varchar(20),
author_name varchar(50) not null,
quantity int not null,
pur_date date not null,
edition varchar(10) not null,
price int not null,
no_pages int,
bill_number varchar(25) not null,
pub_name varchar(35) not null,
pub_address varchar(65),
email_id varchar(25),
contact float);

-- Task # 02
alter table book_register
rename column acc_no to account_num;


-- Task # 03
alter table book_register
drop column pub_name;


-- Task # 04
alter table book_register
modify price varchar(15);
