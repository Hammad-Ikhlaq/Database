Select * from [user]
Select * from [UserType]
select*from [user] 
except
select*from [user] 
where usertype in
(select usertype
from [User]
except
select usertypeid 
from usertype 
where name!='Gold')
