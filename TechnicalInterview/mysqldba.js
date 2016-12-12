technical.controller( 'mysqlDbaCtrl', function( $scope ) {
	$scope.subject 	= "MySQL DBA";
	$scope.questions = [{ question: "How do you stop mysql?",
						  answer: "1. sudo service mysql stop , or 2. /etc/init.d stop, or 3. mysqladmin stop",
						  rank: 1,
						  id: 163
						},
						{ question: "How do tell what version of mysql is running?",
						  answer: "1. mysql>\\s , or 2. mysql>status , or 3. mysql --version, or 4. mysqladmin --version",
						  rank: 1,
						  id: 164
						},
						{ question: "Users are complaining about their queries taking too long. You look at the server and find there are about 50 active queries running at once. Which one would you look at first?",
						  answer: "The longest-running query.",
						  rank: 1,
						  id: 178
						},
						{ question: "What was the default storage engine in MySQL prior to MySQL 5.5? What is it from 5.5 and later?",
						  answer: "MyISAM before and InnoDB after.",
						  rank: 1,
						  id: 179
						},
						{ question: "What do you put before a SELECT clause to get MySQL to show you what indexes MySQL will consider using?",
						  answer: "EXPLAIN",
						  rank: 1,
						  id: 180
						},
						{ question: "Where is mysql TMP located?",
						  answer: "mysql>show global variables like 'tmpdir';",
						  rank: 2,
						  id: 165
						},
						{ question: "where does the my.cnf file live?",
						  answer: "#locate my.cnf",
						  rank: 2,
						  id: 166
						},
						{ question: "Where is the mysql error.log located?",
						  answer: "mysql>show global variables like 'log_error';",
						  rank: 2,
						  id: 167
						},
						{ question: "What command will show an administrator what the most recent deadlock was in InnoDB?",
						  answer: "SHOW ENGINE INNODB STATUS",
						  rank: 2,
						  id: 181
						},
						{ question: "You're setting up replication between a master and a slave. What command would you use to tell the slave what master to connect to?",
						  answer: "CHANGE MASTER TO ...",
						  rank: 2,
						  id: 182
						},
						{ question: "What command will show you the current state of replication on a slave? ",
						  answer: "SHOW SLAVE STATUS",
						  rank: 2,
						  id: 183
						},
						{ question: "What command will show you the current binary log position on a master server?",
						  answer: "SHOW MASTER STATUS",
						  rank: 2,
						  id: 184
						},
						{ question: "How do you kill a query?",
						  answer: "mysql>show full processlist\\G kill id;",
						  rank: 3,
						  id: 168
						},
						{ question: "How do you check replication status?",
						  answer: "1. mysql>show slave status\\G , or 2. mysql>show master status;",
						  rank: 3,
						  id: 169
						},
						{ question: "What is the default transaction isolation level for MySQL 5.5 servers if its left unconfigured in my.cnf?",
						  answer: "REPEATABLE-READ",
						  rank: 3,
						  id: 185
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questionsMysqlDba", function() {
	return {
		restrict: 'A',
		template: "<a name='mysqldba'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#mysqldba\"'>&#9205; {{subject}}</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='mysqldba' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='mysqldba' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='correct' type='checkbox'/><br/><br/></li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='mysqldba'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='mysqldba'>Suggest a Question</button>" +
				  "</div>"
	}
});