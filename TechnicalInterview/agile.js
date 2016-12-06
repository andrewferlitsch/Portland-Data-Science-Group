technical.controller( 'agileCtrl', function( $scope ) {
	$scope.subject 	= "Agile";
	$scope.questions = [{ question: "Describe Kanban process.",
						  answer: ""
						},
						{ question: "What is the technical backlog?",
						  answer: ""
						},
						{ question: "What are story points?",
						  answer: ""
						},
						{ question: "What does a scrum master do?",
						  answer: ""
						},
						{ question: "What is a scrum?",
						  answer: ""
						},
						{ question: "What does a sprint consist of?",
						  answer: ""
						},
						{ question: "What is the product owner's role",
						  answer: ""
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsAgile", function() {
	return {
		restrict: 'A',
		template: "<h1 style='text-align: center' ng-click='show=!show'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span><br/>Correct <input class='agile-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "</div>"
	}
});