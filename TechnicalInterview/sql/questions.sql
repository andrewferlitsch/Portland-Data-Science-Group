drop table questions;
create table questions
(
	id	 		int				not null primary key auto_increment,
	category 	varchar(16)		not null,
	question 	varchar(256)	not null,
	answer   	varchar(256)	not null,
	rank	 	smallint(30)	not null default 1,

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
