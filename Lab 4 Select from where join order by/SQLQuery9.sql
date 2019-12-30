Select * from [User]
Select * from UserCard
Select * from [Transaction]
Select * from TransactionType
SELECT [user].name
FROM [User] 
full join UserCard
ON [user].userid=usercard.userid
full join [Transaction]
on usercard.cardnum=[transaction].cardnum
full join Transactiontype
on [transaction].transtype=TransactionType.transtypeid
where TransactionType.typeName='Failed'