use university;

delimiter $$
CREATE PROCEDURE doiterate(in p1 INT)
BEGIN
  label1: LOOP
  SET p1 = p1 + 1;
  IF p1 < 10 THEN ITERATE label1; END IF;
  LEAVE label1;
  END LOOP label1;
  SET @x = p1;
END
$$

call doiterate(5);
select @x;