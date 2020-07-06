use university;

drop procedure update_course_score_proc;

delimiter $$
create procedure update_course_score_proc(in c_no char(4) ) 
modifies sql data
begin
   declare s_no char(9);
   declare new_grade int;
   declare status char(20);
   
   declare score_cursor cursor for select sno,grade from sc where cno=c_no;
   declare continue handler for 1329 set status='error';
   open score_cursor;
   repeat 
      fetch score_cursor into s_no, new_grade;
      set new_grade=new_grade-5;
      if (new_grade>100) then set new_grade=100; end if;
      if (new_grade>=55 && new_grade<=59) then set new_grade=60; end if;
      update sc set grade=new_grade where sno=s_no and cno=c_no;
   until status='error'
   end repeat;
   close score_cursor;  
end
$$

select  *  from sc where cno='1';

call update_course_score_proc('1');