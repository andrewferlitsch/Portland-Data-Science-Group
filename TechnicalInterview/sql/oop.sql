
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

DELETE FROM questions WHERE category = 'OOP Design';

#----------------------------------------------------------------------
# OOP Design
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OOP Design',
    'What is data encapsulation?',
    'Data encapsulation is where the data in a class is hidden from external objects. The data is only accessible by the class methods.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OOP Design',
    'Describe how public, protected and private scope work.',
    'public - data or method is accessible to all external objects. protected - data or method is accessible only by the class and objects that inherit the class. private - data or method is accessible only by the class.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OOP Design',
    'What is an abstract class?',
    'An abstract class is a class where one or more declared methods require an implementation. A derived (subclass, extended) that inherits the abstract class must implement all the methods that do not have an implementation. An abstract class cannot be instantiated.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OOP Design',
    'What is polymorphism? Give an example.',
    'Multiple inheritance of classes. For example, an OOP design for a vehicle might have a base class for wheels, and a base class for engine. The wheels base class may have derived classes for truck-wheels and passenger-wheels, and the engine base class may have derived classes for gas and diesel engine. A truck object might inherit the diesel engine and truck wheels derived classes, while a passenger vehicle might inherit the gas engine and passenger wheel derived classes.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OOP Design',
    'What is a Singleton design pattern?',
    'A design pattern where only one instance of an object (class) can be instantiated.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OOP Design',
    'What does a static field (variable) in a class do?',
    'There is only one instance of the field (variable) across all instances of the class.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OOP Design',
    'What is a Factory design pattern?',
    'The Factory Method defines an interface for creating objects, but lets subclasses decide which classes to instantiate.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OOP Design',
    'What is an Iterator design pattern?',
    'Provide a way to access the elements of an aggregate object sequentially without exposing its underlying representation.',
    3
  );

