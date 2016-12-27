
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

DELETE FROM questions WHERE category = 'Python';

#----------------------------------------------------------------------
# Python
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Python',
    'How are blocks of code delineated (e.g, statements for an if block)?',
    'Blocks of code are denoted by line indentation.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Python',
    'What is the syntax of a comment?',
    '#',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Python',
    'What are the five standard data types?',
    'Numbers, String, List, Tuple, Dictionary',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Python',
    'What does the keyword yield do?',
    '',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Python',
    'What is a dictionary?',
    'A dictionary is an associative array (or hash). The key can be any data type. Dictionaries are enclosed in {} braces and values are accessed thru square [] brackets.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Python',
    'What does the keyword lambda do?',
    '',
    3
  );

