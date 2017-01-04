
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
  toggle	TINYINT		 NOT NULL DEFAULT 1,

  INDEX(category),
  INDEX(rank)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;

DELETE FROM questions WHERE category = 'MySQL DBA';

#----------------------------------------------------------------------
# MySQL DBA
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'How do you stop mysql?',
    '1. sudo service mysql stop , or 2. /etc/init.d stop, or 3. mysqladmin stop',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'How do tell what version of mysql is running?',
    '1. mysql>\s , or 2. mysql>status , or 3. mysql --version, or 4. mysqladmin --version',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'Users are complaining about their queries taking too long. You look at the server and find there are about 50 active queries running at once. Which one would you look at first?',
    'The longest-running query.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'What was the default storage engine in MySQL prior to MySQL 5.5? What is it from 5.5 and later?',
    'MyISAM before and InnoDB after.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'What do you put before a SELECT clause to get MySQL to show you what indexes MySQL will consider using?',
    'EXPLAIN',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'Where is mysql TMP located?',
    'mysql>show global variables like ''tmpdir'';',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'where does the my.cnf file live?',
    '#locate my.cnf',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'Where is the mysql error.log located?',
    'mysql>show global variables like ''log_error'';',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'What command will show an administrator what the most recent deadlock was in InnoDB?',
    'SHOW ENGINE INNODB STATUS',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'You''re setting up replication between a master and a slave. What command would you use to tell the slave what master to connect to?',
    'CHANGE MASTER TO ...',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'What command will show you the current state of replication on a slave? ',
    'SHOW SLAVE STATUS',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'What command will show you the current binary log position on a master server?',
    'SHOW MASTER STATUS',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'How do you kill a query?',
    'mysql>show full processlist\G kill id;',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'How do you check replication status?',
    '1. mysql>show slave status\G , or 2. mysql>show master status;',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'What is the default transaction isolation level for MySQL 5.5 servers if its left unconfigured in my.cnf?',
    'REPEATABLE-READ',
    3
  );

