
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

DELETE FROM questions WHERE category = 'OS';

#----------------------------------------------------------------------
# OS
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OS',
    'What is a stack frame?',
    'The stack frame is a part of the program''s memory address space for holding the the values of parameters and local variables per function call. Each time a function is called, a stack frame is pushed into this memory space, usually in sequential order. When the function returns, the stack frame is popped, releasing memory.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OS',
    'How many bytes are in a Unicode character?',
    '2 bytes',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OS',
    'Explain how a pointer is dereferenced.',
    'The value of the pointer (an address of another section of memory) is loaded into a register. The register is then used as an argument to an assembly language instruction to fetch the value at the location specified by the register and place it into another register or variable.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OS',
    'Describe UTF-8 encoding',
    'A encoding consisting of one to four bytes. If the first byte has a leading zero bit, it is one byte long (ANSI). If it has two leading one bits, it is two bytes long, three leading one bits it is three bytes long, and four leading one bits it is four bytes long.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OS',
    'What is a GPU? How is it different from a CPU?',
    '',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OS',
    'What does the MMU do when a page fault occurs in a virtual address space?',
    'The memory management unit (MMU) will map the physical memory page into the virtual address space.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OS',
    'What is SDRAM? How is it different from DRAM?',
    'Synchronous Dynamic RAM. SDRAM is an improvement because it synchronizes data transfer between the CPU and memory. SDRAM allows the CPU to process data while another process is being queued.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OS',
    'What is a Mutex?',
    'Short for Mutually Exclusion Object. A mutex is a program object that allows multiple program threads to share the same resource, but not simultaneously. If a thread places a lock on the mutex, then all other threads will block attempting to lock the mutex until it is released.',
    3
  );

