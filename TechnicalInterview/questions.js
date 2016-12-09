technical.controller( 'questionsCtrl', function( $scope ) {
	$scope.subject 	= "Subject";
	$scope.questions = [{ question: "",
						  answer: "",
						  rank: 1
						},
						{ question: "",
						  answer: "",
						  rank: 1
						},
						{ question: "",
						  answer: "",
						  rank: 1
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questions", function() {
	return {
		restrict: 'A',
		template: "<a name=''/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name=''>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name=''>Suggest A Better Answer</button><br/>Correct <input class='correct' type='checkbox'/><br/><br/></li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name=''>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name=''>Suggest a Question</button>" +
				  "</div>"
	}
});