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
  toggle	TINYINT		 NOT NULL DEFAULT 1,

  INDEX(category),
  INDEX(rank)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;

DELETE FROM questions WHERE category = 'AngularJS';

#----------------------------------------------------------------------
# AngularJS
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'AngularJS',
    'What is a Controller?',
    'The program logic which controls a view.',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'AngularJS',
    'What is a Module?',
    'A container for the different parts of an app including controllers, services, filters, and directives.',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'AngularJS',
    'What is a Filter?',
    'It formats the value of an expression for display to the user.',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'AngularJS',
    'What is a Model?',
    'It is the data shown to the user in the view and with which the user interacts.',
    1,
	1
  ); 
  
INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'AngularJS',
    'What is ng-repeat?',
    'A directive that will repeat an HTML element for each value in an array expression, where the value is bound to a variable which can be used within the element.',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'AngularJS',
    'What does a ng-if directive do?',
    'This conditional conditional includes an HTML element depending of the evaluation of the condition angular expression being true.',
    1,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'AngularJS',
    'What is a Service?',
    'A reusable business (program) logic independent of views.',
    2,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'AngularJS',
    'What is ngRoute?',
    'A standard (predefined) module used to enable URL routing to your application.',
    2,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'AngularJS',
    'What is ngAnimate?',
    'A standard (predefined) module used to enable animation features within your application.',
    2,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'AngularJS',
    'What is ngCookies?',
    'A standard (predefined) module used to handle cookie management within your application.',
    2,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'AngularJS',
    'What is ngSanitize?',
    'A standard module used to securely parse and manipulate HTML data in your application.',
    2,
	1
  );
  
INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'AngularJS',
    'What is ng-repeat-start and ng-repeat-end?',
    'A directive that allows a repeated sequence across more than one HTML element.',
    2,
	1
  );
  
INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'AngularJS',
    'How do you access the HTTP service?',
    'The $http service is injected into the controller.',
    2,
	1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'AngularJS',
    'What is ngMock?',
    'A standard (predefined) module used to inject and mock modules, factories, services and providers within your unit tests.',
    3,
	1
  );

