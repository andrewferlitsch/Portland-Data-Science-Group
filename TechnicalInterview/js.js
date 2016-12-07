technical.controller( 'jsCtrl', function( $scope ) {
	$scope.subject 	= "Javascript";
	$scope.questions = [{ question: "What type of class is supported in Javascript.",
						  answer: "Prototyped classes"
						},
						{ question: "Describe two types of function declarations.",
						  answer: "Named functions: function myfuncI() { ... }, and anonymous(unnamed)functions used in callbacks and event handlers."
						},
						{ question: "How can you get an HTML element.",
						  answer: "getElementById() and getElementByName()"
						},
						{ question: "How can you get an HTML element.",
						  answer: "getElementById(), getElementByName(), getElementByClassName(), getElementByTagName()"
						},
						{ question: "What is the largest supported bitsize of an integer?",
						  answer: "32-bits"
						},
						{ question: "How can you declare an empty array?",
						  answer: "var arr = new Array()  or  var arr = [];"
						},
						{ question: "How do you add (expand) a new element to an array?",
						  answer: "arr.push( newitem );"
						},
						{ question: "What type of class is supported.",
						  answer: "prototyped class"
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsJs", function() {
	return {
		restrict: 'A',
		template: "<a name='js'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#js\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span><br/>Correct <input class='js-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button onclick='Tally( \"js\")'>Score</button>" +
				  "</div>"
	}
});