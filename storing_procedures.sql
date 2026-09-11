use school;
select * from students;
-- select  8 class students
select * from students 
where class=6;

-- get the student data based on class
delimiter //
create procedure get_students_by_class(in class_no int)
begin
select * from students
where class=class_no;
end//
delimiter ;
-- call stored peocedure
call get_students_by_class(7);

delimiter //
create procedure by_classs_count(in class_no int,out total_count int)
begin 
select count(*) into total_count from students
where class=class_no;
end//
delimiter ;
set @count=0;
call by_class_count(7,@count);
select @count;