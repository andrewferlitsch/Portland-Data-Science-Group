
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

DELETE FROM questions WHERE category = 'Web';

#----------------------------------------------------------------------
# Web
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Web',
    'What is a CDN?',
    'A content delivery network (CDN) is a system of distributed servers (network) that deliver webpages and other Web content to a user based on the geographic locations of the user.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Web',
    'What are the most common HTTP request methods?',
    'GET, POST, PUT, DELETE',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Web',
    'How are parameters passed in a GET method?',
    'They''re are passed as URL parameters.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Web',
    'What is a Single Page Application (SPA)?',
    'SPA web application loads a single HTML page. As the user interacts with the page, the page is updated by modifying the DOM and new content is obtained by AJAX calls.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Web',
    'What is AJAX?',
    'AJAX is an asynchronous method in Javascript to make calls to server side scripts. It uses the XMLHttpRequest object. Responses to the call typically are in JSON or XML format. The method is used to send or receive data to/from a server without refreshing the whole page.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Web',
    'What is Model View Controller (MVC)?',
    'Model–view–controller (MVC) is a software design pattern for implementing user interfaces on computers. It divides the application into three interconnected components: 1) Model - represents the data, 2) View - how the data is visualized, and 3) Controller - how the data is manipulated and bound to the UI.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Web',
    'Describe what a REST API does. What is meant by stateless?',
    'A REST API call is made between a web application and a server via a HTTP request. The endpoint identifies the call or service being requested and the arguments are passed as query string (?parameters) appended to the URL. A REST API is considered stateless in that no state change persist across calls.',
    3
  );

