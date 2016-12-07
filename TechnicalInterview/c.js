technical.controller( 'cCtrl', function( $scope ) {
	$scope.subject 	= "C";
	$scope.questions = [{ question: "What is a #include?",
						  answer: "Includes header file definitions into the C source file.",
						  rank: 1
						},
						{ question: "Give an example of allocating and freeing memory.",
						  answer: "char *p = malloc(10) and free(p)",
						  rank: 1
						},
						{ question: "What is the difference between a signed and unsigned int",
						  answer: "Signed integers represent only positive numbers starting at zero. An unsigned integer represents both signed " +
								  "unsigned numbers with a range in each direction of half that of a signed integer.",
						  rank: 1
						},
						{ question: "Explain an example of reading/writing a file.",
						  answer: "A file can be opened with a file descriptor (open) or file pointer (fopen), with the latter doing buffered I/O. " +
						          "A file is then read/written using read()/write() for a file descriptor, and fread()/fwrite() for a file pointer.",
						  rank: 2
						},
						{ question: "How many bits are in a long long integer?",
						  answer: "It typically is 128 bits, but must be at least 64 bits.",
						  rank: 2
						},
						{ question: "What does a typedef do? Give an example.",
						  answer: "A typedef is a name that is used as an alias for a type definition. Ex. typedef int Length;",
						  rank: 2
						},
						{ question: "What does the keyword volatile mean?",
						  answer: "Tells the compiler to disable optimizations for the variable. This is typically used when that the variable " +
						          "could be modified asynchronously, such as by a hardware interface.",
						  rank: 3
						},
						{ question: "Describe what a setjmp/longjmp do.",
						  answer: "A setjmp() call saves the location of the current stack frame. When a longjmp() is issued, a jump is made to the saved " +
						          "stack frame location and continues processing without unwinding the stack.",
						  rank: 3
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsC", function() {
	return {
		restrict: 'A',
		template: "<a name='c'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#c\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='c'>Suggest A Better Answer</button><br/>Correct <input class='c-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='c'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='c'>Suggest a Question</button>" +
				  "</div>"
	}
});