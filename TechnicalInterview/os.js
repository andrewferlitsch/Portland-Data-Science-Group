technical.controller( 'osCtrl', function( $scope ) {
	$scope.subject 	= "OS";
	$scope.questions = [{ question: "What is a stack frame?",
						  answer: ""
						},
						{ question: "How many bytes are in a Unicode character?",
						  answer: ""
						},
						{ question: "Describe UTF-8 encoding",
						  answer: ""
						},
						{ question: "What does the MMU do when a page fault occurs in a virtual address space?",
						  answer: ""
						},
						{ question: "What is SDRAM? How is it different from DRAM?",
						  answer: ""
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsOs", function() {
	return {
		restrict: 'A',
		template: "<h1 style='text-align: center' ng-click='show=!show'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span><br/>Correct <input class='os-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "</div>"
	}
});