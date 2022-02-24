use demo3;

# Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product

delimiter //
create procedure showAllProducts()
begin
select *
from products;
end //
delimiter ;

call showAllProducts();

delimiter //
create procedure insertNewProduct(
    Code varchar(20),
    Name varchar(50),
    Price float,
    Amount int,
    Description varchar(255),
    Status bit
)
begin
insert into products( PRODUCTCODE, PRODUCTNAME, PRODUCTPRICE, PRODUCTAMOUNT, PRODUCTDESCRIPTION, PRODUCTSTATUS)
VALUES (Code,Name,Price,Amount,Description,Status);
end //
delimiter ;

call insertNewProduct('M6','BanhGao',2000,2,'den',0);
call showAllPruducts();

#Tạo store procedure sửa thông tin sản phẩm theo id

delimiter //
create procedure updateProduct(
    Code varchar(20),
    Name varchar(50),
    Price float,
    Amount int,
    description varchar(255),
    Status bit,
    IDi int
)
begin
update products
set productCode = Code,
    productName = Name,
    productPrice = Price,
    productAmount = Amount,
    productDescription =description,
    productStatus = Status
where products.Id = IDi;
end //

delimiter ;

call updateProduct('M10','banh tao',3000,2,'den',0,1);
call showAllPruducts();

# Tạo store procedure xoá sản phẩm theo id

delimiter //
create procedure deleteProdut(
    idi int
)
begin
delete
from products
where Id = idi;
end //
delimiter ;

call deleteProdut(2);