Select * from [User]
Select * from [Usercard]

select name,count(uc.userid)
from [user] u
join usercard uc on u.userid=uc.userid 
group by name
order by count(uc.userid) desc

