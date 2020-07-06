
CREATE USER aaa IDENTIFIED BY '12345678';

Grant all on university.* to lanhong;

Grant select on university.student to aaa;

revoke ALL ON university.student from aaa;