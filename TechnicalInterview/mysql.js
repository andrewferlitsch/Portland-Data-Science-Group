technical.controller( 'mysqlCtrl', function( $scope ) {
	$scope.subject 	= "MySQL";
	$scope.questions = [{ question: "How do you select all columns from a table named mytable?",
						  answer: "SELECT * FROM mytable;",
						  rank: 1,
						  id: 170
						},
						{ question: "How do you select only the columns field1 and field2 from a table named mytable?",
						  answer: "SELECT field1,field2 FROM mytable;",
						  rank: 1,
						  id: 171
						},
						{ question: "How do I select only rows where field year is 2015?",
						  answer: "SELECT * FROM mytable where year=2015;",
						  rank: 1,
						  id: 172
						},
						{ question: "How do I count how many rows have year = 2015?",
						  answer: "SELECT COUNT(*) FROM mytable WHERE year=2015;",
						  rank: 2,
						  id: 173
						},
						{ question: "How do you change a field (column) name?",
						  answer: "ALTER TABLE mytable CHANGE oldname newname;",
						  rank: 2,
						  id: 174
						},
						{ question: "How do you make an existing column unique? What does it mean?",
						  answer: "ALTER TABLE mytable ADD UNIQUE (ColumnName); It means that the field value " +
								  "in each row must be unique; otherwise an error will occur.",
						  rank: 2,
						  id: 175
						},
						{ question: "What is a foreign key? How does it work?",
						  answer: "A foreign key points to a primary key in another table. " +
								  "It is used to maintain referential integrity between the tables. " +
								  "You cannot insert a row with a foreign key value if there does not exist a primary key entry in the other table.",
						  rank: 3,
						  id: 176
						},
						{ question: "What is the difference between an INNER and OUTER JOIN?",
						  answer: "An INNER JOIN is the intersection of the two tables, and OUTER JOIN is the union of the two tables.",
						  rank: 3,
						  id: 176
						},
						{ question: "What is the difference between a LEFT JOIN and a RIGHT JOIN",
						  answer: "A LEFT JOIN is the contents of the first table plus the intersection with the second table. " +
								  "A RIGHT JOIN is the contents of the second table plus the intersection with the first table.",
						  rank: 3,
						  id: 177
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questionsMysql", function() {
	return {
		restrict: 'A',
		template: "<a name='mysql'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#mysql\"'>&#9205; {{subject}}</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='mysql' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='mysql' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='correct' type='checkbox'/><br/><br/></li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='mysql'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='mysql'>Suggest a Question</button>" +
				  "</div>"
	}
});