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
  toggle	TINYINT		 NOT NULL DEFAULT 1,

  INDEX(category),
  INDEX(rank)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;

DELETE FROM questions WHERE category = 'HTML';

#----------------------------------------------------------------------
# HTML
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What is an element?',
    'A divisible item in HTML that starts with a start tag and ends with an end tag: e.g., <div></div>',
    1,
	1
  );
  
INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What is a tag?',
    'Is the name following the closed angle bracket < which identifies the type of element.>',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What is an attribute?',
    'It modifies or adds a property to the element.>',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What kind of elements go inside a form element?',
    'It takes elements of type input and select.',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What are some examples of attributes?',
    'e.g., type, name, id, class, readonly, onclick, style',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'How do you load an external javascript file?',
    '<script src=''...''/>',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'How do you load an external CSS file?',
    '<link href=''...''/>',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'HTML stands for what?',
    'Hypertext Markup Language',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What is the element for the largest heading?',
    '<h1>',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What is the element for a line break?',
    '<br/>',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What is attribute in a hyperlink (a) to specify the target web address?',
    'The attribute href',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'In a hyperlink, how do you specify opening a web page in another browser?',
    'target=''_blank''',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What attribute/value setting do you use to define a checkbox?',
    'type=''checkbox''',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What elements are used for a numbered list and a bullet list?',
    '<ol> and <ul>, respectively',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What is the element for indicating text is important?',
    '<strong>',
    2,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What is the Document Object Model (DOM)?',
    'It defines how an HTML page is defined and parsed into elements. It can be accessed and modified by the browser using Javascript or CSS3.',
    2,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What happens in a form GET method?',
    'The values of the input elements are sent to the web page specified in the action attribute. In this method, they are sent as URL parameters.',
    2,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What happens in a form POST method?',
    'The values of the input elements are sent to the web page specified in the action attribute. In this method, they are sent in the body of the HTTP request.',
    2,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'How do you capture a click event on an element?',
    'attribute: onclick='''', where JS code is placed within the single quotes.',
    2,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What element is used to define emphasised text?',
    '<em>',
    2,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What event is used to detect a hover over an element?',
    'attribute: onmouseover='''', where JS code is placed within the single quotes.',
    3,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'HTML',
    'What is the difference between an inline and block element? Give an example of each.',
    'An inline element does not cause a line break and a block element does. <span> is an example of an inline element, and <p> is a block element.',
    3,
	0
  );

