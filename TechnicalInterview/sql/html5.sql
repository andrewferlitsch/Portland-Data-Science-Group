
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

  INDEX(category),
  INDEX(rank)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;

DELETE FROM questions WHERE category = 'HTML5';

#----------------------------------------------------------------------
# HTML5
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What are some HTML5 new features?',
    'Geolocation, Canvas, Structural elements, embedding Audio/Video, Progess Bar, Datalists',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What are the input types added by HTML5?',
    'color, date, datetime, datetime-local, email, month, number, range',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What is the DOCTYPE declaration in HTML5?',
    '<!DOCTYPE html>',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What is the placeholder attribute, and where is it used?',
    'Provides a hint that appears in light gray in a input text or textarea element.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What is or are the elements for embedding a video and audio file respectively?',
    '<video> and <audio>.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'An SVG graphic is specified in what format?',
    'This graphic is in XML format.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What does the contenteditable attribute do?',
    'It can be set to true or false, indicating if the content within the element start/end tags can be edited.',
    2
  );

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What is geolocation in HTML5?',
    'This HTML5 API is used to locate a user''s geographical position. It will use the GPS information from a user''s device, if available, otherwise it use the IP address to determine the location of the user''s ISP.',
    2
  );

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What are the new structural elements added?',
    '<header>, <footer>, <section>, <article>, <nav>, <aside>, <main>, <summary>, <mark> and <time>',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What is the syntax of a custom data attribute?',
    'data-some-name=''some-value'', where some-name is name of the attribute.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What does the required attribute do?',
    'Forces an input element to be non-empty. If a submit occurs and the element is empty, the submit is disabled and the input box is red highlighted.',
    2
  );

# Redo
INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'Describe the File Drag and Drop API.',
    '',
    3
  );


# Redo
INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'Describe how the <output> element works.',
    'The <output> tag represents the result of a calculation (like one performed by a script).',
    3
  );

# Redo
INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'How do you specify a number input element to take input in dollar and cents?',
    'Add attribute step=0.01',
    3
  );

