technical.controller( 'html5Ctrl', function( $scope, $http ) {
	$scope.subject 	= "HTML5";
	$scope.questions = [{ question: "placeholder 1",
						  answer: "",
						  rank: 1,
						  id: 1
						},
						{ question: "placeholder 2",
						  answer: "",
						  rank: 2,
						  id: 4
						},
						{ question: "placeholder 3",
						  answer: "",
						  rank: 3,
						  id: 6
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
	$http({
        method : "GET",
        url : "load.php",
		params: { category: 'HTML5'}
    }).then(function mySucces(response) {
        $scope.questions = response.data;
		$scope.random 	 = pick3( $scope.questions );
    }, function myError(response) {
    });
})
.directive( "questionsHtml5", function() {
	return {
		restrict: 'A',
		template: "<a name='html5'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#html5\"'>&#9205; {{subject}}</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='html5' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='html5' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='html5-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='html5'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='html5'>Suggest a Question</button>" +
				  "</div>"
	}
});