use classicmodels;
DELIMITER //
CREATE PROCEDURE findAllCustomer()
BEGIN
SELECT *
FROM customers;
END //
DELIMITER ;

CALL findAllCustomer();
DROP procedure findAllCustomer;

DELIMITER //
DROP procedure findAllCustomer;
CREATE PROCEDURE findAllCustomer()
BEGIN
SELECT *
FROM customers
WHERE customerName = 175;
end //
DELIMITER ;