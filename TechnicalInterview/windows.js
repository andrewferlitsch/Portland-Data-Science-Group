technical.controller( 'windowsCtrl', function( $scope ) {
	$scope.subject 	= "Windows OS";
	$scope.questions = [{ question: "What is the newline sequence for a file?",
						  answer: "carriage return (\\r) followed by a newline (\\n)",
						  rank: 1,
						  id: 240
						},
						{ question: "When logging in, how do you specify a domain different than the default domain? " +
									"in the user field?",
						  answer: "domain-name\\user-name",
						  rank: 2,
						  id: 241
						},
						{ question: "",
						  answer: "",
						  rank: 3,
						  id: 162
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questionsWindows", function() {
	return {
		restrict: 'A',
		template: "<a name='windows'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#windows\"'>&#9205; {{subject}}</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='windows' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='windows' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='windows-correct' type='checkbox'/><br/><br/></li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='windows'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='windows'>Suggest a Question</button>" +
				  "</div>"
	}
});