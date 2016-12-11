technical.controller( 'cppCtrl', function( $scope ) {
	$scope.subject 	= "C++";
	$scope.questions = [{ question: "How is a method overloaded?",
						  answer: "Number and data types of arguments.",
						  rank: 1,
						  id: 78
						},
						{ question: "What is the difference between a struct and class?",
						  answer: "Methods/data default to public in a struct.",
						  rank: 1,
						  id: 79
						},
						{ question: "Where in a function can a variable be declared?",
						  answer: "A variable can be declared anywhere a statement would be valid, and can be declared in the initializer part of a for loop.",
						  rank: 1,
						  id: 80
						},
						{ question: "What are the four OOP constructs that C++ introduced?",
						  answer: "abstraction, data encapsulation, inheritance, polymorphism.",
						  rank: 2,
						  id: 81
						},
						{ question: "What is a virtual method?",
						  answer: "A method in a base class that may be overridden in a derived class.",
						  rank: 2,
						  id: 82
						},
						{ question: "Give an example of operator overloading.",
						  answer: "Box operator+(const Box& b)",
						  rank: 2,
						  id: 83
						},
						{ question: "How is char and wchar_t differ?",
						  answer: "char holds a single byte character, while wchar_t are multi-byte for large character sets (e.g., UNICODE).",
						  rank: 3,
						  id: 84
						},
						{ question: "What are all the storage class types?",
						  answer: "auto, extern, register, static, mutable",
						  rank: 3,
						  id: 85
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questionsCpp", function() {
	return {
		restrict: 'A',
		template: "<a name='cpp'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#cpp\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>"+
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='c' {{question.id}}>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='cpp' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='cpp-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='cpp'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='cpp'>Suggest a Question</button>" +
				  "</div>"
	}
});