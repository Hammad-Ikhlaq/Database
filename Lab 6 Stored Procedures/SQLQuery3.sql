create procedure [userprint] @name varchar(20)
as begin
Select * from [User] where @name=[name]
end
execute [userprint] 'Ali'
