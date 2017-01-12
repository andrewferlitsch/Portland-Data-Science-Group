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
  toggle    TINYINT      NOT NULL DEFAULT 1,

  INDEX(category),
  INDEX(rank)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;

DELETE FROM questions WHERE category = 'OS';

#----------------------------------------------------------------------
# OS
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'OS',
    'What is a stack frame?',
    'The stack frame is a part of the program''s memory address space for holding the the values of parameters and local variables per function call. Each time a function is called, a stack frame is pushed into this memory space, usually in sequential order. When the function returns, the stack frame is popped, releasing memory.',
    1,
	0
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'OS',
    'What is a Unicode character?',
    'This internationally standarized character code type is represented by two bytes.',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'OS',
    'What is numerical range of a byte value?',
    '-127 to 128',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'OS',
    'What is numerical range of a signed short integer?',
    '−32,768 to 32,767',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'OS',
    'What is maximum value of an unsigned short integer?',
    '65535',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'OS',
    'Explain how a pointer is dereferenced.',
    'The value of the pointer (an address of another section of memory) is loaded into a register. The register is then used as an argument to an assembly language instruction to fetch the value at the location specified by the register and place it into another register or variable.',
    1,
	0
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'OS',
    'What is UTF-8 encoding?',
    'A encoding consisting of one to four bytes. If the first byte has a leading zero bit, it is one byte long (ANSI). If it has two leading one bits, it is two bytes long, three leading one bits it is three bytes long, and four leading one bits it is four bytes long.',
    2,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'OS',
    'What is a Magic Number?',
    'A constant numerical or text value used to identify a file format or protocol.',
    2,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'OS',
    'What is a GPU?',
    'A specialized electronic circuit designed to rapidly manipulate and alter memory to accelerate the creation of images in a frame buffer intended for output to a display.',
    2,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'OS',
    'What does the MMU do when a page fault occurs in a virtual address space?',
    'When this fault occurs, the memory management unit (MMU) will map the physical memory page into the virtual address space.',
    3,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'OS',
    'What is SDRAM? How is it different from DRAM?',
    'Synchronous Dynamic RAM. SDRAM is an improvement because it synchronizes data transfer between the CPU and memory. SDRAM allows the CPU to process data while another process is being queued.',
    3,
	0
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'OS',
    'What is a Mutex?',
    'Short for Mutually Exclusion Object. A program object that allows multiple program threads to share the same resource, but not simultaneously. If a thread places a lock on the mutex, then all other threads will block attempting to lock the object until it is released.',
    3,
	1
  );

