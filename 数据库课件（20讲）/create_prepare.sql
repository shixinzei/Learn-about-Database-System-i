use university;

drop prepare select_class_pre;

prepare select_student_pre from 'select * from student';

execute select_student_pre;

deallocate prepare select_student_pre;



prepare stu_pre from 'select * from student where sno=?';

set @s_no='200215121';
execute stu_pre using @s_no;

deallocate prepare stu_pre;