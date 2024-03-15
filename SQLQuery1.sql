create database empdb;
use empdb

create table emp_detail(
						emp_id int ,
						emp_name varchar(15),
						emp_email varchar(30),
						emp_gender char (1),
						emp_loc varchar(20),
						PRIMARY KEY (emp_id));
