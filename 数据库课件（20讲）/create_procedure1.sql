drop procedure proc1;

DELIMITER //  

CREATE PROCEDURE proc1(OUT s int) 
BEGIN
SELECT COUNT(*) INTO s FROM student;
END
 //  
DELIMITER ; 
student
@s=1;
call proc1(@s);
studentSELECT @s;