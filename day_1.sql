create database sql7challenge;
use sql7challenge;

--1 customers
create table customers
( customer_id int primary key,
  full_name varchar(100) not null,
  email varchar(100) not null,
  city varchar(50) not null,
  signup_date date not null,
  segment varchar(20) not null
  );
  
  --2 products
  create table products
  (
  product_id int primary key,
  product_name varchar(100),
  category varchar(40),
  price decimal(10,2),
  cost decimal(10,2)
  );
  
  --3 orders
  create table orders(
  order_id int primary key,
  customer_id int not null,
  order_date date not null,
  status varchar(20),
  channel varchar(20),
  
  foreign key (customer_id) references customers (customer_id)
  );
  
  
  --4 order_items
  create table order_items(
  order_item int primary key,
  order_id int,
  product_id int,
  quantity int not null,
  unit_price decimal(10,2) not null,
  
  foreign key (order_id) references orders(order_id),
  foreign key (product_id) references products(product_id)
  )
  
  --5 payment
  create table payment(
  payment_id int primary key,
  order_id int unique,
  payment_method varchar (50),
  payment_status varchar (50),
  amount decimal(10,2),
  
  foreign key (order_id) references orders (order_id)
  )
  
  
  --6 deliveries
  create table deliveries(
  delivery_id int primary key,
  order_id int unique,
  dispatch_date date,
  delivery_date date,
  delivery_status varchar(20),
  
  foreign key (order_id) references orders(order_id)
  
  )
  
  
  

  
  
  
  
  
