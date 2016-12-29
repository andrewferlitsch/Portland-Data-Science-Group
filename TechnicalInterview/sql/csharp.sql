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

DELETE FROM questions WHERE category = 'C#';

#----------------------------------------------------------------------
# C#
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C#',
    'Name two ways the using statement is used.',
    'As a directive, it is used to create an alias for a namespace or to import types defined in other namespaces. As a statement, it defines a scope at the end of which an object will be disposed.',
    1
  );

INSERT INTO questions (category, question, answer, rank, toggle) 
  VALUES (
    'C#',
    'What is the scope of the variable ''i'': for (int i = 0; i<10;i++) {} ?',
    'The scope is within the for loop. It has no scope outside of the for loop.',
    1,
	0
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C#',
    'What is the program entry point of a C# application?',
    'The class that contains a static Main() definition.',
    1
  );

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'C#',
    'Describe how try, catch and finally work.',
    'These constructs are used for exception handling. If an exception occurs in a try block, then the the code in the corresponding catch block is executed; otherwise it is not. Regardless of whether an exception occurs in a try/catch block, the code in the finally block is always executed. If a return occurs, the code in the finally is executed before the return.',
    2,
	0
  );

INSERT INTO questions (category, question, answer, rank, toggle) 
  VALUES (
    'C#',
    'What is managed code?',
    'The distinction between managed and unmanaged code is only relevant when developing applications that interact with the .NET Framework or other Common Language Runtime (CLR) implementations. Managed code prevents typical mistakes that lead to security holes, handles memory management, type checking and releasing unneeded objects.',
    2,
	0
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C#',
    'How are objects deleted?',
    'There is no explicit delete call in C#. A reference count is instead maintained. Periodically, a garbage collection task happens in the background which releases all memory with zero reference counts (unused).',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C#',
    'What is the method to automatically enforce garbage collection?',
    'System.GC.Collect()',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C#',
    'What does a LINQ statement do?',
    'This statement provides a consistent query model across different data stores and formats. All query operations consist of three distinct actions: 1. Obtain the data store, 2. Create the query, 3. Execute the query.',
    3
  );

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C#',
    'What is Reflection?',
    'The ability to read an object''s metadata information (type, parameters, etc). This allows creating and invoking methods on objects not known at compile time.',
    3
  );

