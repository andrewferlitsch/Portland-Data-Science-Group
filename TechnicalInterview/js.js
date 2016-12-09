technical.controller( 'jsCtrl', function( $scope ) {
	$scope.subject 	= "Javascript";
	$scope.questions = [{ question: "How can you declare an empty array?",
						  answer: "var arr = new Array()  or  var arr = [];",
						  rank: 1
						},
						{ question: "How do you add (expand) a new element to an array?",
						  answer: "arr.push( newitem );",
						  rank: 1
						},
						{ question: "Which HTML element is used to embed Javascript code?",
						  answer: "<script></script>",
						  rank: 1
						},
						{ question: "What type of class is supported in Javascript.",
						  answer: "Prototyped classes",
						  rank: 2
						},
						{ question: "How do you round the number 7.5 to the nearest integer?",
						  answer: "Math.round( 7.5)",
						  rank: 2
						},
						{ question: "Describe two types of function declarations.",
						  answer: "Named functions: function myfuncI() { ... }, and anonymous(unnamed)functions used in callbacks and event handlers.",
						  rank: 2
						},
						{ question: "How can you get an HTML element.",
						  answer: "getElementById(), getElementByName(), getElementByClassName(), getElementByTagName()",
						  rank: 2
						},
						{ question: "What is the largest supported bit-size of an integer?",
						  answer: "32-bits",
						  rank: 2
						},
						{ question: "Give an example of a regular expression pattern in Javascript.",
						  answer: "var pat = /hello/i;  // matches all case-insensitive instances of the string hello. " +
								  "str.replace( /hello/i, \"goodbye\"); replaces hello with goodbye in string str.",
						  rank: 3
						},
						{ question: "What tool do you use to debug javascript errors in FireFox? How do you write to the console log?",
						  answer: "FireFox Options Menu->Developer Tools->Browser Console. You can write to the browser console with console.log()." +
								  "",
						  rank: 3
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
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='js'>Suggest A Better Answer</button><br/>Correct <input class='js-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='js'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='js'>Suggest a Question</button>" +
				  "</div>"
	}
});