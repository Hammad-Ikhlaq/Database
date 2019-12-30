alter procedure [login]
@cnum varchar(20) ,@pin char(4) ,@status int output
as begin
Select @status=count(cardnum) from [card]
where (@cnum=cardnum and @pin=PIN)
if(@status=0)
begin
set @status=0;
end
else 
begin
set @status=1;
end
end
declare @output int
exec [login] '1324327436569' ,'1770', @output output
select @output as [status]

select*from [card]

