Select * from [card]
Select * from [transaction]

select c.cardnum
from [card] c
full join [transaction] t on t.cardNum=c.cardnum
where  not exists(select t.cardnum from [transaction]
					where t.cardNum=c.cardnum)