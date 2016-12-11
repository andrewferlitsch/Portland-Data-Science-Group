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
						{ question: "How do you kill a query?",
						  answer: " mysql>show full processlist\\G kill id;",
						  rank: 3,
						  id: 168
						},
						{ question: "How do you check replication status?",
						  answer: "1. mysql>show slave status\\G , or 2. mysql>show master status;",
						  rank: 3,
						  id: 169
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
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#mysqldba\"'>{{subject}} &#x21f5;</h1>" +
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