# In Progress
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
  toggle	tinyint		 NOT NULL DEFAULT 1,

  INDEX(category),
  INDEX(rank)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;

DELETE FROM questions WHERE category = 'Java';

#----------------------------------------------------------------------
# Java
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Java',
    'What are the builtin scalar data types in Java?',
    'int, short, long, float, double, char, string, byte, boolean',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Java',
    'What is the keyword import is used for?',
    'Used to import a library, where each item in the library is uniquely identified by a namespace.',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Java',
    'What is the program entry point into a Java application?',
    'The class with a ''public static void main( String args[] )'' definition.',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Java',
    'How do you exit from a Java application?',
    'System.exit( exit_code )',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Java',
    'How do you output to standard out and standard error?',
    'System.out.println() and System.err.println()',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Java',
    'How do you specify a class path when compiling a java file?',
    'javac -cp path javafile',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Java',
    'In a String, how do you get the 3rd character?',
    'string.charAt(2)',
    1,
	1
  );

# Redo
INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'How does garbage collection work?',
    'Java uses lazy garbage collection. There is no explicit method to delete an allocated item or to force garbage collection.',
    2
  );

# Redo
INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'How is polymorphism supported in Java?',
    'Supported only in interface definition.',
    2
  );

# Redo
INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'What is the difference between an abstract class and interface?',
    'Interface supports polymorphism and classes do not. Data declarations in an interface is static.',
    2
  );

# Redo
INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'What is a package? How is a package created?',
    'A package is a library. Each file in the library contains the line ''package somename;'', where somename is the name of the package.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'What is an ArrayList and how do you access the elements?',
    'A derived type for dynamic sizing of an array. It can take any type specified by the template argument <type>. An item is added with the add() method and accessed with the get() method.',
    2
  );

# Redo
INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'Is the keyword abstract required for abstract methods declared in an interface?',
    'No',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'What does a default method do in an interface definition?',
    'It is a default implementation of a method if not defined in an implementation.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'What is a lambda expression?',
    'A form of functional programming added in Java 8. These expressions are used primarily to define inline implementation of a functional interface, i.e., an interface with a single method only.',
    3
  );

# Redo
INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'What does it mean when you get a compiler error message about two methods having the same erasure?',
    'It means that both functions have the same name (overloaded), but the types only differ by a type template (between the <> brackets). public void Foo( List<String> ) and public void Foo( List<Integer> )',
    3
  );

