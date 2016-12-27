
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

DELETE FROM questions WHERE category = 'R';

#----------------------------------------------------------------------
# R
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'R',
    'What is R?',
    'A statistical programming language.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'R',
    'What are the three assignment operators in R?',
    'equal, leftward (<-), and rightward (->)',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'R',
    'What is a data frame?',
    'Data frames are tabular data objects. Unlike a matrix in data frame each column can contain different modes of data. The first column can be numeric while the second column can be character and third column can be logical. It is a list of vectors of equal length.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'R',
    'What are the common builtin types of R-objects?',
    'vectors, arrays, matrices, lists, factors, data frames',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'R',
    'What are the six data types of a vector?',
    'logical, numeric, integer, complex, character, raw',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'R',
    'How do you create a data frame?',
    'Data Frames are created using the data.frame() function.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'R',
    'How do I find all variables starting with the pattern "ab"?',
    'ls(pattern = "ab")',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'R',
    'Describe Data Shaping',
    '',
    3
  );

