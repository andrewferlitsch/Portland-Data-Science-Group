drop table questions;
create table questions
(
	id	 		int				not null primary key auto_increment,
	category 	varchar(16)		not null,
	question 	varchar(256)	not null,
	answer   	varchar(256)	not null,
	rank	 	tinyint		    not null default 1,

	index	(category),
	index	(rank)
)
ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;
show columns in questions;

source agile.sql;
source algorithms.sql;
source angularjs.sql;
source c.sql;
source cplusplus.sql;
source css.sql;
source datascience.sql;
source dos.sql;
source html.sql;
source html5.sql;
source java.sql;
source javascript.sql;
source jquery.sql;
source mysql.sql;
source mysqldba.sql;
source network.sql;
source oop.sql;
source os.sql;
source python.sql;
source r.sql;
source security.sql;
source web.sql;
