Select * from UserType
Select * from [User]
Select * from UserCard
Select * from [Card]
Select * from CardType
Select * from [Transaction]
Select * from TransactionType
Select *
from Cardtype
inner join [Card] on [Card].cardtypeid=Cardtype.cardTypeID
where cardtype.name='Credit'
order by [card].cardnum asc