
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

DELETE FROM questions WHERE category = 'HTML';

#----------------------------------------------------------------------
# HTML
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What is an element, tag and attribute?',
    'An element is a divisible item in HTML that starts with a start tag and ends with an end tag: e.g., <div></div> A tag is the name following the closed angle bracket < which identifies the type of element. An attribute modifies the element. The type attribute makes this element a text input box <input type=''text''>',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What kind of elements go inside a form element?',
    'input and select',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'Give two examples of attributes.',
    'e.g., type, name, id, class, readonly, onclick, style',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'Describe how to load an external javascript file and CSS file.',
    '<script src=''...''/> for Javascript and <link href=''...''/>',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'HTML stands for what?',
    'Hypertext Markup Language',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What is the element for the largest heading?',
    '<h1>',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What is the element for a line break?',
    '<br/>',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What is attribute in a hyperlink (a) to specify the target web address?',
    'href',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'In a hyperlink, how do you specify opening a web page in another browser?',
    'target=''_blank''',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What attribute/value do you use to define a checkbox?',
    'type=''checkbox''',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What elements are used for a numbered list and a bullet list?',
    '<ol> and <ul>, respectively',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What is the element for indicating text is important?',
    '<strong>',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What is the DOM? Can it be manipulated by the browser?',
    'Document Object Model defines how an HTML page is defined and parsed into elements. The DOM maybe accessed and modified by the browser using Javascript or CSS3.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'Explain what happens in a form POST method and a form GET method.',
    'The values of the input elements are sent to the web page specified in the action attribute. In the GET method, they are sent as URL parameters. In the POST method, they are sent in the body of the HTTP request.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'How do I capture a click event on an element?',
    'attribute: onclick='''', where JS code is placed within the single quotes.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What element is used to define emphasised text?',
    '<em>',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What event is used to detect a hover over an element?',
    'attribute: onmouseover='''', where JS code is placed within the single quotes.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What is the difference between an inline and block element? Give an example of each.',
    'An inline element does not cause a line break and a block element does. <span> is an example of an inline element, and <p> is a block element.',
    3
  );

