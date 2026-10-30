CREATE DATABASE company_training;
USE company_training;
CREATE TABLE departments (
department_id INT NOT NULL,
dept_name VARCHAR(80) NOT NULL,
city VARCHAR(60)
);
CREATE TABLE employees (
employee_id INT NOT NULL,
employee_name VARCHAR(100) NOT NULL,
email VARCHAR(120),
department_id INT NOT NULL,
salary DECIMAL(10,2),
status VARCHAR(20)
);



ALTER TABLE departments ADD PRIMARY KEY (DEPARTMENT_ID);

alter table employees ADD PRIMARY KEY (DEPARTMENT_ID);

alter table departments ADD LOCATION VARCHAR(100);

alter table DEPARTMENT RENAME COLUMN DEPT_NAME TO DEPARTMENT_NAME;

ALTER TABLE DEPARTMENT  CHANGE  DEPT_NAME DEPARTMENT_NAME VARCHAR(100) NOT NULL;

ALTER TABLE EMPLIYEES modify SALARY decimal(12,2) NOT NULL;

ALTER TABLE EMPLIYEES ALTER column SATAUS SET DEFAULT 'ACTIVE';

ALTER TABLE EMPLIYEES ADD constraint UC_EMAIL UNIQUE (EMAIL);

ALTER TABLE EMPLIYEES RENAME TO SATFF;


ALTER TABLE STAFF
ADD constraint FK_DEPARTMENT
foreign key (DEPARTMENT_ID) REFERENCES DEPARTMENT(DEPARTMENT_ID);

ALTER TABLE STAFF
drop constraint  UC_EMAIL;

ALTER TABLE STAFF
DROP constraint FK_DEPARTMENT;

ALTER TABLE STAFF
DROP PRIMARY KEY; 

ALTER TABLE STAFF
ADD primary key(EMPLOYEE_ID);

ALTER TABLE departments
drop column location;


 
rename table company_trainging.department to company_manegment.departments;
rename table company_trainging.staff to company_managment.staff;

drop database company_trainging;






