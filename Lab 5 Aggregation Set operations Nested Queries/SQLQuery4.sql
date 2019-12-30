Select * from [User]

select city,count(city)
from [user]
group by city
having count(city) in(select distinct  count(city)
from [user]
group by city)
order by count(city) desc

