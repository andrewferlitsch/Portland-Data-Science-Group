# Reviewed
#----------------------------------------------------------------------
# Initialization
#----------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS questions
(
  id        INT          NOT NULL PRIMARY KEY auto_increment,
  category  VARCHAR(16)  NOT NULL,
  question  VARCHAR(256) NOT NULL,
  answer    VARCHAR(256) NOT NULL,
  rank      TINYINT      NOT NULL DEFAULT 1,
  toggle	TINYINT		 NOT NULL DEFAULT 1,

  INDEX(category),
  INDEX(rank)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;

DELETE FROM questions WHERE category = 'MySQL';

#----------------------------------------------------------------------
# MySQL
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'How do you select all columns from a table named mytable?',
    'SELECT * FROM mytable;',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'How do you select only the columns field1 and field2 from a table named mytable?',
    'SELECT field1,field2 FROM mytable;',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'How do you select only rows where field year is 2015?',
    'SELECT * FROM mytable where year=2015;',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'How do you create a database?',
    'CREATE DATABASE databasename;',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'How do you login to a password protected database?',
    'mysql -u username -p  , then you will be prompted for password',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'How do you set which database to use?',
    'USE databasename;',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'What does RDBMS stand for?',
    'Relational Database Management System',
    1,
	0
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'How do you count how many rows have year = 2015?',
    'SELECT COUNT(*) FROM mytable WHERE year=2015;',
    2,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'How do you change a field (column) name?',
    'ALTER TABLE mytable CHANGE oldname newname;',
    2,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'How do you make an existing column unique? What does it mean?',
    'ALTER TABLE mytable ADD UNIQUE (ColumnName); It means that the field value in each row must be unique; otherwise an error will occur.',
    2,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'How do you drop a table?',
    'DROP TABLE tablename;',
    2,
	1
  );
  
INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'How do you execute a MySQL script file?',
    'source filename;',
    2,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'What is a foreign key? How does it work?',
    'This key points to a primary key in another table. It is used to maintain referential integrity between the tables. You cannot insert a row with a value for this key if there does not exist a primary key entry in the other table.',
    3,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'What is an INNER JOIN?',
    'This JOIN is the intersection of the two tables.',
    3,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'What is an OUTER JOIN?',
    'This JOIN is the union of the two tables.',
    3,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'What is a LEFT JOIN?',
    'This JOIN is the contents of the first table plus the intersection with the second table.',
    3,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'What is a RIGHT JOIN',
    'This JOIN is the contents of the second table plus the intersection with the first table.',
    3,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'MySQL',
    'Describe a parent/child hierachy relationship in a table',
    'A table with two identifiers, where one identifier being a primary key, and the second identifier references the first (primary key) identifier. Ex. ( ManagerID int Primary Key, EmployeeID int REFERENCES( ManagerID ))',
    3,
	1
  );

