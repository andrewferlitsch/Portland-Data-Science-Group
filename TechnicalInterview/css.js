technical.controller( 'cssCtrl', function( $scope ) {
	$scope.subject 	= "CSS";
	$scope.questions = [{ question: "What does CSS stand for?",
						  answer: "Cascading Style Sheets",
						  rank: 1
						},
						{ question: "Where in an HTML doc can you place a link to an external style sheet?",
						  answer: "<head>",
						  rank: 1
						},
						{ question: "Which HTML attribute is used to specify an inline style for an element?",
						  answer: "style",
						  rank: 1
						},
						{ question: "Which CSS property is used to change the color of text?",
						  answer: "color",
						  rank: 1
						},
						{ question: "How do you specify that hyperlinks are displayed without an underline?",
						  answer: "a { text-decoration: none; }",
						  rank: 2
						},
						{ question: "Can you use negative values for margin? Can you use negative values for padding?",
						  answer: "yes for margins, no for padding",
						  rank: 2
						},
						{ question: "How do you make a list that lists its items with squares?",
						  answer: "list-style-type: square;",
						  rank: 3
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsCss", function() {
	return {
		restrict: 'A',
		template: "<a name='css'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#css\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='css'>Suggest A Better Answer</button><br/>Correct <input class='correct' type='checkbox'/><br/><br/></li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='css'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='css'>Suggest a Question</button>" +
				  "</div>"
	}
});