Select * from [transaction]

select cardnum,count(cardnum)
from [transaction]
group by cardnum
having 2<count(cardnum)
