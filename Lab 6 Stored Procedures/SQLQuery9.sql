alter procedure [login]
@cnum varchar(20) ,@oldpin varchar(4) ,@newpin varchar(4),@msg varchar(10) output
as begin
declare @temp int
Select @temp=count(cardnum) from [card]
where (len(@newpin)=4 and (@cnum=cardnum and @oldpin=PIN))
if(@temp!=0)
begin
set @msg='Updated PIN';
end
else
begin
set  @msg='Error';
end
end
declare @output varchar(10)
exec [login] '1324327436569','1775','3330', @output output
select @output as [message]
select*from [card]

