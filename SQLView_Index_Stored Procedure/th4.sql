use classicmodels;
create view customer_view as
select customerNumber, customerName, phone
from customers;

select *
from customer_view;

# cập nhật view
create or replace view customer_view as
select customerName, customerNumber, contactFirstName, contactLastName, phone
from customers
where city = 'Nantes';

# Xóa view

drop view classicmodels.customer_view;