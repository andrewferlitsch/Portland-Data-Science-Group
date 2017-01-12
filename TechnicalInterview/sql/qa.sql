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
  rank      TINYINT 	 NOT NULL DEFAULT 1,
  toggle	TINYINT		 NOT NULL DEFAULT 0,

  INDEX(category),
  INDEX(rank)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;

DELETE FROM questions WHERE category = 'QA';

#----------------------------------------------------------------------
# QA
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'QA',
    'What is black-box testing?',
    'A method for testing software without knowledge of the internal workings.',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'QA',
    'What is white-box testing?',
    'A method for testing software based on knowledge of the internal workings.',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'QA',
    'What is requirements based testing?',
    'A method of testing based on breaking down a specification into atomic actions.',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'QA',
    'What is positive testing?',
    'A set of tests that test for non-failing behavior.',
    2,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'QA',
    'What is negative testing?',
    'A set of tests that test for failing behavior.',
    2,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'QA',
    'What is code coverage?',
    'A metric where how much of the code was exercised by testing.',
    2,
	1
  );
  
INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'QA',
    'What is branch (conditional) coverage?',
    'A metric where how many branches (true/false/case labels) were exercised during testing.',
    2,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'QA',
    'When is a result status an anomaly?',
    'The result status when a test passes, but an undesirable side-effect is detected.',
    3,
	1
  );
  
INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'QA',
    'What is path coverage?',
    'A metric where how many logical code branches were exercised during testing.',
    3,
	1
  );

