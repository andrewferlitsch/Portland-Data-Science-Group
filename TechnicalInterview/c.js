technical.controller( 'cCtrl', function( $scope ) {
	$scope.subject 	= "C";
	$scope.questions = [{ question: "What is a #include?",
						  answer: "Includes header file definitions into the C source file.",
						  rank: 1,
						  id: 86
						},
						{ question: "Give an example of allocating and freeing memory.",
						  answer: "char *p = malloc(10) and free(p)",
						  rank: 1,
						  id: 87
						},
						{ question: "What is the difference between a signed and unsigned int",
						  answer: "Signed integers represent only positive numbers starting at zero. An unsigned integer represents both signed " +
								  "unsigned numbers with a range in each direction of half that of a signed integer.",
						  rank: 1,
						  id: 88
						},
						{ question: "What is the program entry point into a C application?",
						  answer: "The function main()",
						  rank: 1,
						  id: 89
						},
						{ question: "Explain an example of reading/writing a file.",
						  answer: "A file can be opened with a file descriptor (open) or file pointer (fopen), with the latter doing buffered I/O. " +
						          "A file is then read/written using read()/write() for a file descriptor, and fread()/fwrite() for a file pointer.",
						  rank: 2,
						  id: 90
						},
						{ question: "How many bits are in a long long integer?",
						  answer: "It typically is 128 bits, but must be at least 64 bits.",
						  rank: 2,
						  id: 91
						},
						{ question: "What does a typedef do? Give an example.",
						  answer: "A typedef is a name that is used as an alias for a type definition. Ex. typedef int Length;",
						  rank: 2,
						  id: 92
						},
						{ question: "What does the keyword volatile mean?",
						  answer: "Tells the compiler to disable optimizations for the variable. This is typically used when that the variable " +
						          "could be modified asynchronously, such as by a hardware interface.",
						  rank: 3,
						  id: 93
						},
						{ question: "Describe what a setjmp/longjmp do.",
						  answer: "A setjmp() call saves the location of the current stack frame. When a longjmp() is issued, a jump is made to the saved " +
						          "stack frame location and continues processing without unwinding the stack.",
						  rank: 3,
						  id: 94
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questionsC", function() {
	return {
		restrict: 'A',
		template: "<a name='c'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#c\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>"+
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='c' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='c'>Suggest A Better Answer</button><br/></span>Correct <input class='c-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='c'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='c'>Suggest a Question</button>" +
				  "</div>"
	}
});