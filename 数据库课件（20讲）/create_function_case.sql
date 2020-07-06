use university;
drop function get_wwek_fn;
delimiter $$
create function get_wwek_fn(week_no int) returns char(20)
no sql
begin
   declare week char(20);
   case week_no
     when 0  then set week='Monday';
     when 1  then set week='Tuesday';
     when 2  then set week='Wednesday';
     when 3  then set week='Thursday';
     when 4  then set week='Friday';
     else set week='holidays';
   end case;
   return week;
end
$$

select now(),weekday(now()),get_wwek_fn(weekday(now()));



delimiter $$
create function row_no_fn() returns int
no sql
begin
   set @row_no=@row_no+1;
    
   return @row_no;
end
$$


set @row_no=0;
select row_no_fn() 行号, sno, sname from student;

