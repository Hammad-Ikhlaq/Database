alter procedure WithDraw
@cnum varchar(20) ,@pin char(4) ,@amount int 
as begin
declare @status int
Select @status=count(c.cardnum) from [transaction] c
join [card] t on c.cardnum=t.cardnum
where (@cnum=t.cardnum and @pin=PIN and amount<balance)

declare @temp int
select @temp= max(c.transId) from [transaction] c


if(@status=0)
begin
declare @i int
set @i=1
while(@i<=@temp)
begin
set @i=@i+1
end
insert into [transaction] values(@i, getdate(),@cnum,@amount,4)

end
else 
begin
declare @j int
set @j=1
while(@j<=@temp)
begin
set @j=@j+1
end
insert into [transaction] values(@j, getdate(),@cnum,@amount,1)
Update [card] set balance = balance-@amount
where @cnum=cardnum
end
end
exec Withdraw '1324327436569' ,'1770', 200 

select*from [card]
select*from [transaction]