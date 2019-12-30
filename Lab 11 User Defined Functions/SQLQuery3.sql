alter FUNCTION TotalSale(@pid int)
RETURNS int
AS
BEGIN

Declare @price int
Select @price=product.price from product where product.productid=@pid
Declare @last int
Select @last=sum(orderitem.quantity) from orderitem where orderitem.productid=@pid
set @price=@price*@last
return @price
END

alter procedure my 
AS begin
select productid, productname, dbo.TotalSale(productid) as TotalSale from product 
end

execute my


select*from product
select*from orderitem
select*from customer
select*from [order]