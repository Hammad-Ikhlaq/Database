alter FUNCTION info(@cid int)
RETURNS TABLE
AS
RETURN SELECT*
FROM product where product.productID in(select productid 
									  from orderitem
									  where orderid in(select orderid
													 from [order]
													 where customerid=@cid))





select*from dbo.info(1)


select*from product
select*from orderitem
select*from [order]