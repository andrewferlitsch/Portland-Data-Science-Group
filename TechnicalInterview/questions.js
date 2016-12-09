technical.controller( 'questionsCtrl', function( $scope ) {
	$scope.subject 	= "Subject";
	$scope.questions = [{ question: "",
						  answer: "",
						  rank: 1,
						  id: 148
						},
						{ question: "",
						  answer: "",
						  rank: 1,
						  id: 149
						},
						{ question: "",
						  answer: "",
						  rank: 1,
						  id: 150
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questions", function() {
	return {
		restrict: 'A',
		template: "<a name=''/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='correct' type='checkbox'/><br/><br/></li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name=''>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name=''>Suggest a Question</button>" +
				  "</div>"
	}
});