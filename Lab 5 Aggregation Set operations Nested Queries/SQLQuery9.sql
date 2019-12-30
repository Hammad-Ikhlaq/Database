Select * from [user]
Select * from [usertype]

select*from [user] where
usertype in(select usertype
from [User]
except
select usertypeid 
from usertype 
where name='Gold')