use university;
CREATE TABLE lookup (id INT) ENGINE = MEMORY;

CREATE INDEX id_index USING BTREE ON lookup (id);


show engines;