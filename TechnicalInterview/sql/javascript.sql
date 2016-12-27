
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

DELETE FROM questions WHERE category = 'Javascript';

#----------------------------------------------------------------------
# Javascript
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'How can you declare an empty array?',
    'var arr = new Array()  or  var arr = [];',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'How do you add (expand) a new element to an array?',
    'arr.push( newitem );',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'Which HTML element is used to embed Javascript code?',
    '<script></script>',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'What type of class is supported in Javascript?',
    'Prototyped classes',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'How do you round the number 7.5 to the nearest integer?',
    'Math.round( 7.5)',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'Describe two types of function declarations.',
    'Named functions: function myfuncI() { ... }, and anonymous(unnamed)functions used in callbacks and event handlers.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'How can you get an HTML element?',
    'getElementById(), getElementByName(), getElementByClassName(), getElementByTagName()',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'What is the largest supported bit-size of an integer?',
    '32-bits',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'Give an example of a regular expression pattern in Javascript.',
    'var pat = /hello/i;  // matches all case-insensitive instances of the string hello. str.replace( /hello/i, "goodbye"); replaces hello with goodbye in string str.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'What tool do you use to debug javascript errors in FireFox? How do you write to the console log?',
    'FireFox Options Menu->Developer Tools->Browser Console. You can write to the browser console with console.log().',
    3
  );

