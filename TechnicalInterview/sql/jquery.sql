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
  toggle 	TINYINT		 NOT NULL DEFAULT 1,

  INDEX(category),
  INDEX(rank)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;

DELETE FROM questions WHERE category = 'JQuery';

#----------------------------------------------------------------------
# JQuery
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'JQuery',
    'What is the shortcut for loading jQuery code after the document ready event?',
    '$(function() { }',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'JQuery',
    'What does jQuery use for selectors?',
    'CSS selectors and some custom selectors',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'JQuery',
    'What does this select: $("div.cat")',
    'All div elements with class = cat',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'JQuery',
    'What symbol is used for a JQuery shortcut?',
    '$',
    1,
	0
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'JQuery',
    'How do you get the inner HTML code for an element?',
    '$("div").html()',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'JQuery',
    'What method is used to hide an element?',
    'hide()',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'JQuery',
    'What syntax is used to change the style of div element?',
    '$("div").css(property,value)',
    2,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'JQuery',
    'What method is used to make an AJAX call?',
    '$.ajax({ ... })',
    2,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'JQuery',
    'What does $("div p") select?',
    'It selects all p elements (paragraph) inside all div elements.',
    2,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'JQuery',
    'Which jQuery method is used to switch between adding/removing one or more classes (for CSS) from selected elements?',
    'toggleClass()',
    3,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'JQuery',
    'What methods are used to remove selected items?',
    'remove() and detach()',
    3,
	1
  );

