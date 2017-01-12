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
  toggle    TINYINT		 NOT NULL DEFAULT 1,

  INDEX(category),
  INDEX(rank)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;

DELETE FROM questions WHERE category = 'Python';

#----------------------------------------------------------------------
# Python
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Python',
    'How are blocks of code delineated (e.g, statements for an if block)?',
    'Blocks of code are denoted by line indentation.',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Python',
    'What is the syntax of a comment?',
    '#',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Python',
    'What are the five standard data types?',
    'Numbers, String, List, Tuple, Dictionary',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Python',
    'In a class method, how do you assign a member field that has the same name as a parameter?',
    'self.field = field',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Python',
    'How do you print a line?',
    'print(arg)',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Python',
    'How do you declare a named function?',
    'def name(args):',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Python',
    'How do define a class constructor?',
    'def __init__(self,args)',
    2,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Python',
    'What does the keyword yield do?',
    'It returns a generator as the result of a function.',
    2,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Python',
    'What is a dictionary?',
    'A dictionary is an associative array (or hash). The key can be any data type. Dictionaries are enclosed in {} braces and values are accessed thru square [] brackets.',
    2,
	0
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Python',
    'What does the keyword lambda do?',
    'It is used to create anonymous functions, such as used in functional programming.',
    3,
	1
  );

