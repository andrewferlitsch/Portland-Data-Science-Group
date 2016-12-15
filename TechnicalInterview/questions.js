technical.controller( 'nameCtrl', function( $scope ) {
	$scope.subject 	= "name";
	$scope.questions = [{ question: "",
						  answer: "",
						  rank: 1,
						  id: 240
						},
						{ question: "",
						  answer: "",
						  rank: 2,
						  id: 0
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
.directive( "questionsName", function() {
	return {
		restrict: 'A',
		template: "<a name='name'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#name\"'>&#9205; {{subject}}</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='name' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='name' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='name-correct' type='checkbox'/><br/><br/></li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='name'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='name'>Suggest a Question</button>" +
				  "</div>"
	}
});