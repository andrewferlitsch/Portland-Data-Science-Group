
#----------------------------------------------------------------------
# Initialization
#----------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS questions
(
  id        INT          NOT NULL PRIMARY KEY auto_increment,
  category  VARCHAR(16)  NOT NULL,
  question  VARCHAR(256) NOT NULL,
  answer    VARCHAR(256) NOT NULL,
  rank      SMALLINT(30) NOT NULL DEFAULT 1,

  INDEX(category),
  INDEX(rank)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;

DELETE FROM questions WHERE category = 'C';

#----------------------------------------------------------------------
# C
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What is a #include?',
    'Includes header file definitions into the C source file.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'Give an example of allocating and freeing memory.',
    'char *p = malloc(10) and free(p)',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What is the difference between a signed and unsigned int',
    'Signed integers represent only positive numbers starting at zero. An unsigned integer represents both signed unsigned numbers with a range in each direction of half that of a signed integer.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What is the program entry point into a C application?',
    'The function main()',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'Explain an example of reading/writing a file.',
    'A file can be opened with a file descriptor (open) or file pointer (fopen), with the latter doing buffered I/O. A file is then read/written using read()/write() for a file descriptor, and fread()/fwrite() for a file pointer.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'How many bits are in a long long integer?',
    'It typically is 128 bits, but must be at least 64 bits.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What does a typedef do? Give an example.',
    'A typedef is a name that is used as an alias for a type definition. Ex. typedef int Length;',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What does the keyword volatile mean?',
    'Tells the compiler to disable optimizations for the variable. This is typically used when that the variable could be modified asynchronously, such as by a hardware interface.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'Describe what a setjmp/longjmp do.',
    'A setjmp() call saves the location of the current stack frame. When a longjmp() is issued, a jump is made to the saved stack frame location and continues processing without unwinding the stack.',
    3
  );

