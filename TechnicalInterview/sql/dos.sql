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

  INDEX(category),
  INDEX(rank)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;

DELETE FROM questions WHERE category = 'DOS';

#----------------------------------------------------------------------
# DOS
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'DOS',
    'How do you keep command strings being executed in a script from being echoed to the console?',
    'echo off',
    1
  );

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'DOS',
    'How do you redirect output from standard out and standard error to a file?',
    'Append >file or 2>file to the end of a command string.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'DOS',
    'How do you set a variable?',
    'set var=value',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'DOS',
    'How do you remove a directory and all its contents?',
    'rmdir dirname \s',
    1
  );

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'DOS',
    'How do you test in an IF statement if the last command exited with a non-zero exit code?',
    'IF %ERRORLEVEL% NEQ 1',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'DOS',
    'What is the syntax for a goto and the target?',
    'goto label  and  :label',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'DOS',
    'How do you count the number of occurrences of the word hello in a file?',
    'find "hello" file /c , where the pattern to search for must be in double quotes.',
    3
  );

