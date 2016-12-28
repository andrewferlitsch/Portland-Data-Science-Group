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
  rank      TINYINT		 NOT NULL DEFAULT 1,

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
    'Includes a header file definitions into the C source file.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'How do you allocate 10 bytes of memory and then free it?',
    'char *p = malloc(10) and free(p)',
    1
  );

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What is an unsigned int?',
    'An integer data type of only positive numbers starting at zero.',
    1
  );

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What is a signed int?',
    'An integer data type of both positive and negative numbers in a range where half in the positive range and half in the negative range.',
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
    'Where can the keyword break be used?',
    'This keyword can only be used in case/default statement within a switch statement or in a looping statement',
    1
  );

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What is a null pointer?',
    'A pointer pointing to nothing, e.g., char *p = NULL;',
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
    'What is a long long integer?',
    'It typically is 128 bit integer, but must be at least 64 bits.',
    2
  );

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What is a typedef?',
    'A name that is used as an alias for a type definition. Ex. typedef int Length;',
    2
  );

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What is calloc()?',
    'A memory allocation routine that allocates a specified number of fixed size memory blocks, which need not be continous, and initializes them to zero.',
    2
  );

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What does the file open mode w+ do?',
    'Opens a file both for reading and writing. If a file is not existing it creates one, else if the file is existing it will be over written.',
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
    'What does a setjmp/longjmp do?',
    'A setjmp() call saves the location of the current stack frame. When a longjmp() is issued, a jump is made to the saved stack frame location and continues processing without unwinding the stack.',
    3
  );

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What is the bit operator XOR (^) do?',
    'If both the corresponding bits are same it gives 0 else 1.',
    3
  );

