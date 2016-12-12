technical.controller( 'cssCtrl', function( $scope ) {
	$scope.subject 	= "CSS";
	$scope.questions = [{ question: "What does CSS stand for?",
						  answer: "Cascading Style Sheets",
						  rank: 1,
						  id: 39
						},
						{ question: "Where in an HTML doc can you place a link to an external style sheet?",
						  answer: "<head>",
						  rank: 1,
						  id: 40
						},
						{ question: "Which HTML attribute is used to specify an inline style for an element?",
						  answer: "style",
						  rank: 1,
						  id: 41
						},
						{ question: "Which CSS property is used to change the color of text?",
						  answer: "color",
						  rank: 1,
						  id: 42
						},
						{ question: "What element is used to specify CSS properties in a web page?",
						  answer: "<style></style>",
						  rank: 1,
						  id: 43
						},
						{ question: "How do you specify a CSS rule for a class and for an id?",
						  answer: "#name {} and .name {} , respectively",
						  rank: 1,
						  id: 44
						},
						{ question: "How do you specify that hyperlinks are displayed without an underline?",
						  answer: "a { text-decoration: none; }",
						  rank: 2,
						  id: 45
						},
						{ question: "Can you use negative values for margin? Can you use negative values for padding?",
						  answer: "yes for margins, no for padding",
						  rank: 2,
						  id: 46
						},
						{ question: "How do you left-justify a group of block elements?",
						  answer: "set style='float:left;' on each block element, and then a style='clear:both' on the next element that is not to be left-justified.",
						  rank: 2,
						  id: 47
						},
						{ question: "What is the default value for the position property?",
						  answer: "static",
						  rank: 2,
						  id: 148
						},
						{ question: "How do you select all elements inside a div?",
						  answer: "div p",
						  rank: 2,
						  id: 149
						},
						{ question: "What is the order of values in border-width to define a width for each side?",
						  answer: "top, right, bottom, left",
						  rank: 2,
						  id: 150
						},
						{ question: "Explain the difference between visibility:hidden; and display:none?",
						  answer: "Both hide the element from being displayed. For visibility, " +
								  "the space consumed by the element is still rendered (blank), while for display the space " +
								  "is not rendered (folded)",
						  rank: 2,
						  id: 152
						},
						{ question: "What are three things (property values) you can do with the text-transform property?",
						  answer: "uppercase words, lowercase words, capitalize words",
						  rank: 3,
						  id: 48
						},
						{ question: "How do you make a list that lists its items with squares?",
						  answer: "list-style-type: square;",
						  rank: 3,
						  id: 49
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questionsCss", function() {
	return {
		restrict: 'A',
		template: "<a name='css'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#css\"'>&#9205; {{subject}}</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='css' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='css' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='correct' type='checkbox'/><br/><br/></li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='css'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='css'>Suggest a Question</button>" +
				  "</div>"
	}
});