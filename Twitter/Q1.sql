--Functionality1:  Find people to follow (10 points)

ALTER Procedure FindPeopleToFollow
@UserName varchar(20)
/*
Execute  FindPeopleToFollow 'Ali123'
*/
as 
begin
	
	select * from (	
	--1.	Users that have more than 3 people in their FOLLOWING list in common with the input user.	
			Select FollowerUserName as PeopleToFollow From Following where FollowedUserName in (
			select FollowedUserName from Following
			where FollowerUserName= @UserName)
			and FollowerUserName !=@UserName
			group by FollowerUserName
			having COUNT(*)>3
			
		UNION

	--2.	Users that have more than 5 followers and live in same region (Country) as input user.
			Select UserName		 
			From Users inner join Following
			on Following.FollowedUserName=Users.UserName
			where Users.Country= (select Country from Users where UserName= @UserName)
			group by userName
			having Count(FollowerUserName)>5
			
		UNION		
	--3.	Users that have more than 3 same interests as input user. 
			
			select UserName From UserInterests 
			where InterestID in (
					select InterestID From UserInterests where UserName=@UserName)
			and UserName!=@UserName
			group by UserName
			having COUNT(*)>3
	) as Usersfrom123
			
	EXCEPT
	--4.	People that input user is already following should not be added in the list.
			select FollowedUserName from Following
			where FollowerUserName=@UserName
END
GO
--Inserting some New user to Test
insert into Users values ('Nasir', '60','Pakistan')
insert into UserInterests values
('Nasir',10)
,('Nasir',11)
,('Nasir',14)
,('Nasir',13)

Execute FindPeopleToFollow 'Nasir'