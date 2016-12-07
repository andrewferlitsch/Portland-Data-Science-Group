technical.controller( 'javaCtrl', function( $scope ) {
	$scope.subject 	= "Java";
	$scope.questions = [{ question: "How does garbage collection work?",
						  answer: "Java uses lazy garbage collection. There is no explicit method to delete an allocated item or to force garbage collection."
						},
						{ question: "How is polymorphism supported in Java?",
						  answer: "Supported only in interface definition."
						},
						{ question: "What are the builtin scalar data types in Java?",
						  answer: "int, short, long, float, double, char, string, byte, boolean"
						},
						{ question: "Describe what the keyword import is used for.",
						  answer: "Used to import a library, where each item in the library is uniquely identified by a namespace."
						},
						{ question: "What does a default method do in an interface definition?",
						  answer: "It is a default implementation of a method if not defined in an implementation."
						},
						{ question: "What is the difference between an abstract class and interface?",
						  answer: "Interface supports polymorphism and classes do not. Data declarations in an interface is static."
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsJava", function() {
	return {
		restrict: 'A',
		template: "<a name='java'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#java\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better'>Suggest A Better Answer</button><br/>Correct <input class='java-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='java'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='java'>Suggest a Question</button>" +
				  "</div>"
	}
});