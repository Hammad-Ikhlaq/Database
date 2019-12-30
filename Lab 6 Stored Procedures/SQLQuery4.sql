create procedure [crdnprint] @cnum numeric
as begin
Select [name],phoneNum,city from [User] u
join UserCard uc on uc.userid= u.userid
where @cnum=cardnum
end
execute [crdnprint] 1324327436569
Select * from [User]
Select * from UserCard
Select * from [Card]
