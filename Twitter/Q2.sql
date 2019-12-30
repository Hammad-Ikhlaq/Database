--Functionality 2: Notify Like (10 points)

create table NotifyLikes
(
	TweetID int foreign key references Tweets(TweetID), 
	TweetByUserName varchar(20) foreign key references Users(UserName), 
	LikeByUseName varchar(20)   foreign key references Users(UserName), 
	[Date] date, 
	SeenFlag int
)

go

alter trigger Notifications
on Likes
after insert
as
begin
	Insert into NotifyLikes
	select  I.TweetID, T.UserName, I.LikeByUserName, I.LikeOnDate, 0
 from inserted I inner join Tweets T on T.TweetID=I.TweetID

end
go


--Testing
insert into Likes values (4, 'ImranKhan',getdate())
select * from NotifyLikes