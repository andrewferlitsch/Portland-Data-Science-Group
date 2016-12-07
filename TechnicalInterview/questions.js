technical.controller( 'questionsCtrl', function( $scope ) {
	$scope.subject 	= "Subject";
	$scope.questions = [{ question: "",
						  answer: ""
						},
						{ question: "",
						  answer: ""
						},
						{ question: "",
						  answer: ""
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
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span><br/>Correct <input class='correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button onclick='Tally( \"\")' class='w3-btn w3-green'>Score</button>" +
				  "</div>"
	}
});