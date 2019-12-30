Select * from [User]

select name, city c1
from [User] u1
where city in(select distinct city c2 from [user] u2
			   where u1.userid!=u2.userid)