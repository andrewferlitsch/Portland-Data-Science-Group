
#----------------------------------------------------------------------
# Initialization
#----------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS questions
(
  id        INT          NOT NULL PRIMARY KEY auto_increment,
  category  VARCHAR(16)  NOT NULL,
  question  VARCHAR(256) NOT NULL,
  answer    VARCHAR(256) NOT NULL,
  rank      TINYINT      NOT NULL DEFAULT 1,

  INDEX(category),
  INDEX(rank)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;

DELETE FROM questions WHERE category = 'Algorithms';

#----------------------------------------------------------------------
# Algorithms
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Algorithms',
    'What is an Algorithm?',
    'A step by step procedure, which defines a set of instructions to be executed in certain order to get the desired output.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Algorithms',
    'What is a Fibonacci Series?',
    'A sequence in which it generates subsequent number by adding two previous numbers. For example − 0 1 1 2 3 5 8 13.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Algorithms',
    'What is Hashing?',
    'A method to convert (map) a range of key values into a range of indexes of an array.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Algorithms',
    'What is Linear Searching?',
    'A method of search that attempts to find an item in a list (array) by comparing each element sequentially.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Algorithms',
    'What is Binary Search?',
    'A search method that works only on sorted lists or arrays. This search selects the middle which splits the entire list into two parts. The method is repeated on the parts until the item is found.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Algorithms',
    'What is a Recursive Function?',
    'A function in which it calls itself, directly or calls a function that in turn calls it.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Algorithms',
    'What is a Linked-list?',
    'A list of data-items connected with links i.e. pointers or references, which can be used to form queues, stacks and circular lists.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Algorithms',
    'What is a Stack?',
    'A stack is used to store and retrieve values in Last In First Out (LIFO) method.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Algorithms',
    'What is a Graph?',
    'A representation of a set of objects where some pairs of objects are connected by links. The interconnected objects are represented by points termed as vertices, and the links that connect the vertices are called edges.',
    2
  );

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Algorithms',
    'What is a directed graph?',
    'A graph that can only be traversed in one direction.',
    3
  );

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Algorithms',
    'What is an undirected graph?',
    'A graph where an edge can be traversed in either direction.',
    3
  );

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Algorithms',
    'What is an AVL Tree?',
    'A self-balancing binary search tree, where the height of any subtrees of a node difference only by at most one level.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Algorithms',
    'What is a Tree?',
    'A minimally connected graph having no loops and circuits.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Algorithms',
    'What is a Binary Tree?',
    'A type of tree where each node can have at most two children (branches).',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Algorithms',
    'What is a Tree Traversal?',
    'A process of visiting all the nodes of a tree.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Algorithms',
    'What is a depth-first search (DFS) of a binary tree?',
    'A recursive function where at each node you recursively process the left tree and then the right tree.',
    3
  );

