use test2;

create table customer (
    cust_id int primary key, 
    name varchar(255),
    dob date,
    address varchar(255)
 );

create table plan (
    plan_id int primary key,
     validity date, 
     plan_name varchar(255), 
     plan_charge int , 
     cust_id int, 
     foreign key(cust_id) references customer(cust_id)
     
); 

create table mobileNumber (
    m_no int primary key, 
    balance float, 
    carrier_name varchar(255), 
    cust_id int, 
    plan_id int, 
    foreign key(cust_id) references customer(cust_id), 
    foreign key(plan_id) references plan(plan_id)
); 



