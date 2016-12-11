technical.controller( 'dosCtrl', function( $scope ) {
	$scope.subject 	= "DOS";
	$scope.questions = [{ question: "How do you keep command strings being executed in a script from being echoed to the console?",
						  answer: "echo off",
						  rank: 1,
						  id: 158
						},
						{ question: "How do you redirect output from standard out and standard error to a file?",
						  answer: ">file and 2>file",
						  rank: 1,
						  id: 159
						},
						{ question: "How do you set a variable?",
						  answer: "set var=value",
						  rank: 1,
						  id: 160
						},
						{ question: "How do you test in an IF statement if the last command exited with a non-zero exit code?",
						  answer: "IF %ERRORLEVEL% NEQ 1",
						  rank: 2,
						  id: 161
						},
						{ question: "How do you count the number of occurrences of the word hello in a file?",
						  answer: "find \"hello\" file /c , where the pattern to search for must be in double quotes.",
						  rank: 3,
						  id: 162
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questionsDos", function() {
	return {
		restrict: 'A',
		template: "<a name='dos'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#dos\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='dos' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='dos' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='correct' type='checkbox'/><br/><br/></li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='dos'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='dos'>Suggest a Question</button>" +
				  "</div>"
	}
});