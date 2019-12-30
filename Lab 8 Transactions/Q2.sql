alter procedure temp(@rollno varchar(7),@courseID int, @message varchar(20) output)
as begin
begin transaction
save transaction savepoint;
declare @pre int 
set
declare @pre int 
set @pre=(select PrerequiteCourseID from Courses where @courseID=CourseID)

if((@pre=(select CourseID from Registration where @rollno=RollNumber and CourseID=@pre and GPA>0)) or @pre is NULL)
begin
	if((select WarningCount from Students where @rollno=RollNo)=0)
	begin
		if((select top 1 AvailableSeats from Courses_Semester 
									where (CourseID=@courseID and semester=(Select top 1 semester 
									from semester 
									where [status]='InProgress')))>0)
		begin
			if((select top 1 Department from Students where @rollno=RollNo)=(select top 1 Department from Courses_Semester where CourseID=@courseID))
				begin
				declare @sec varchar(1)
				set @sec=(select top 1 Section from Courses_Semester where CourseID=@courseID)
				update Courses_Semester
				set AvailableSeats=((select top 1 AvailableSeats from Courses_Semester where CourseID=@courseID)-1)
				where (CourseID=@courseID and section=@sec)
				update ChallanForm
				set TotalDues=TotalDues-((select CreditHours from Courses where CourseID=@courseID)*7000)
				set @message='Registration to'+(select Coursename from Courses where CourseID=@courseID)+' Section'+ @sec+' successful';
				
				insert into Registration(semester,RollNumber, CourseID, Section, GPA) 
				values ((Select semester from semester where [status]='InProgress'),@rollno, @courseID, @sec,0)
				end
			else
				begin
				set @message='error'
				rollback transaction savepoint;
				end
		end
		else
			begin
			set @message='Seats are not available'
			rollback transaction savepoint;
			end
	end
	else
		begin
		set @message='Student is in warning'
		rollback transaction savepoint;
		end
end
else
	begin
	set @message='pre-requisite is not done'
	rollback transaction savepoint;
	end
commit transaction
end

declare @out varchar(20)
exec temp 1,10,@out output
select @out as message

create table error_logs
(Id int primary key
,procedure_name varchar(30)
,error_statement varchar(30)
,date_time datetime
)



select * from Students
select * from Courses 
select * from ChallanForm
select * from Instructors
select * from Registration
select * from Semester
select * from Courses_Semester
