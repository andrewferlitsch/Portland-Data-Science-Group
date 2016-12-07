technical.controller( 'cCtrl', function( $scope ) {
	$scope.subject 	= "C";
	$scope.questions = [{ question: "What does the keyword volatile mean?",
						  answer: "Tells the compiler to disable optimizations for the variable. This is typically used when that the variable " +
						          "could be modified asynchronously, such as by a hardware interface."
						},
						{ question: "What is a #include?",
						  answer: "Includes header file definitions into the C source file."
						},
						{ question: "Describe what a setjmp/longjmp do.",
						  answer: "A setjmp() call saves the location of the current stack frame. When a longjmp() is issued, a jump is made to the saved " +
						          "stack frame location and continues processing without unwinding the stack."
						},
						{ question: "Give an example of allocating and freeing memory.",
						  answer: "char *p = malloc(10) and free(p)"
						},
						{ question: "Explain an example of reading/writing a file.",
						  answer: "A file can be opened with a file descriptor (open) or file pointer (fopen), with the latter doing buffered I/O. " +
						          "A file is then read/written using read()/write() for a file descriptor, and fread()/fwrite() for a file pointer."
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
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small'>Suggest A Better Answer</button><br/>Correct <input class='c-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button onclick='Tally( \"c\")' class='w3-btn w3-green score'>Score</button>" +
				  "</div>"
	}
});