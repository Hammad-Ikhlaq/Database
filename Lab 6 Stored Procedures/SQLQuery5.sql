alter procedure [inout]
@cname varchar(20),@id int ,@count int output
as begin
Select @count=count(uc.cardnum) from [User] u
join UserCard uc on uc.userid= u.userid
where @id=uc.userid
end

declare @output int
exec [inout] 'Ali',1, @output output
select @output as num_of_cards

