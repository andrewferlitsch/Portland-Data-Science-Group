drop table questions;
create table questions
(
	id	 		int				not null primary key auto_increment,
	category 	varchar(16)		not null,
	question 	varchar(256)	not null,
	answer   	varchar(256)	not null,
	rank	 	tinyint		    not null default 1,
	toggle		tinyint			not null default 1,

	index	(category),
	index	(rank)
)
ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;
show columns in questions;
 
\! echo "Agile Loading...";
source agile.sql;
\! echo "Algorithms Loading...";
source algorithms.sql;
\! echo "AngularJS Loading...";
source angularjs.sql;
\! echo "C Loading...";
source c.sql;
\! echo "C++ Loading...";
source cplusplus.sql;
\! echo "C# Loading...";
source csharp.sql;
\! echo "CSS Loading...";
source css.sql;
\! echo "Data Science Loading...";
source datascience.sql;
\! echo "DOS Loading...";
source dos.sql;
\! echo "HTML Loading...";
source html.sql;
\! echo "HTML5 Loading...";
source html5.sql;
\! echo "Java Loading...";
source java.sql;
\! echo "Javascript Loading...";
source javascript.sql;
\! echo "JQuery Loading...";
source angularjs.sql;
\! echo "MySQL Loading...";
source mysql.sql;
\! echo "MySQL DBA Loading...";
source mysqldba.sql;
\! echo "Network Loading...";
source network.sql;
\! echo "OOP Loading...";
source oop.sql;
\! echo "OS Loading...";
source os.sql;
\! echo "Python Loading...";
source python.sql;
\! echo "QA Loading...";
source qa.sql;
\! echo "R Loading...";
source r.sql;
\! echo "Security Loading...";
source security.sql;
\! echo "Web Loading...";
source web.sql;
