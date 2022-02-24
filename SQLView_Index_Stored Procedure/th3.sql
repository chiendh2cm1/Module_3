use classicmodels;
DELIMITER //
CREATE PROCEDURE getcusById(IN cusNum INT(11))
BEGIN
SELECT *
FROM customers
WHERE customerNumber = cusNum;
END //
DELIMITER ;

call getcusById(175);

delimiter //
create procedure GetCustomerCountByCity(
    in in_city varchar(50),
    out total int
)
begin
select count(customerNumber)
into total
from customers
where city = in_city;
end //
delimiter ;

call GetCustomerCountByCity('Lyon',@total);
select @total;

delimiter //
create procedure setCounter(
    inout couter int,
    in inc int
)
begin
    set couter = couter + inc;
end //
delimiter ;
set @couter =1;
call setCounter(@couter, 1);
call setCounter(@couter, 3);
call setCounter(@couter, 5);
select @couter;