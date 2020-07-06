use university;

delimiter $$
create function get_name_fn(no char(9),
          role char(20)) returns char(20)
reads sql data
begin
   declare name char(20);
   if('student'=role) then
      select sname into name from student 
      where Sno=no;
   elseif('course'=role) then
      select cname into name from course 
      where Cno=no;
   else set name='input error!';
   end if;
   return name;
end
$$

select get_name_fn('200215121','student');
select get_name_fn('1','course');


show create function get_name_fn;

select name from mysql.proc 
where db='university' and type='function';