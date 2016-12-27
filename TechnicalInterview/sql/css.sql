
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

DELETE FROM questions WHERE category = 'CSS';

#----------------------------------------------------------------------
# CSS
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'What does CSS stand for?',
    'Cascading Style Sheets',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'Where in an HTML doc can you place a link to an external style sheet?',
    '<head>',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'Which HTML attribute is used to specify an inline style for an element?',
    'style',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'Which CSS property is used to change the color of text?',
    'color',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'What element is used to specify CSS properties in a web page?',
    '<style></style>',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'How do you specify a CSS rule for a class and for an id?',
    '#name {} and .name {} , respectively',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'How do you specify that hyperlinks are displayed without an underline?',
    'a { text-decoration: none; }',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'Can you use negative values for margin? Can you use negative values for padding?',
    'yes for margins, no for padding',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'How do you left-justify a group of block elements?',
    'set style=''float:left;'' on each block element, and then a style=''clear:both'' on the next element that is not to be left-justified.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'What is the default value for the position property?',
    'static',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'How do you select all elements inside a div?',
    'div p',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'What is the order of values in border-width to define a width for each side?',
    'top, right, bottom, left',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'Explain the difference between visibility:hidden; and display:none?',
    'Both hide the element from being displayed. For visibility, the space consumed by the element is still rendered (blank), while for display the space is not rendered (folded)',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'What are three things (property values) you can do with the text-transform property?',
    'uppercase words, lowercase words, capitalize words',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'How do you make a list that lists its items with squares?',
    'list-style-type: square;',
    3
  );

