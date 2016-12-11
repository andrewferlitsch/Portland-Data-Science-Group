technical.controller( 'javaCtrl', function( $scope ) {
	$scope.subject 	= "Java";
	$scope.questions = [{ question: "What are the builtin scalar data types in Java?",
						  answer: "int, short, long, float, double, char, string, byte, boolean",
						  rank: 1,
						  id: 60
						},
						{ question: "Describe what the keyword import is used for.",
						  answer: "Used to import a library, where each item in the library is uniquely identified by a namespace.",
						  rank: 1,
						  id: 61
						},
						{ question: "What is the program entry point into a Java application?",
						  answer: "The class with a 'public static void main( String args[] )' definition.",
						  rank: 1,
						  id: 62
						},
						{ question: "How do you exit from a Java application?",
						  answer: "System.exit( exit_code )",
						  rank: 1,
						  id: 154
						},
						{ question: "How do you output to standard out and standard error",
						  answer: "System.out.println() and System.err.println()",
						  rank: 1,
						  id: 155
						},
						{ question: "How does garbage collection work?",
						  answer: "Java uses lazy garbage collection. There is no explicit method to delete an allocated item or to force garbage collection.",
						  rank: 2,
						  id: 63
						},
						{ question: "How is polymorphism supported in Java?",
						  answer: "Supported only in interface definition.",
						  rank: 2,
						  id: 64
						},
						{ question: "What is the difference between an abstract class and interface?",
						  answer: "Interface supports polymorphism and classes do not. Data declarations in an interface is static.",
						  rank: 2,
						  id: 65
						},
						{ question: "What is a package? How is a package created?",
						  answer: "A package is a library. Each file in the library contains the line 'package somename;', where somename is the name of the package.",
						  rank: 2,
						  id: 66
						},
						{ question: "What is an ArrayList and how do you access the elements?",
						  answer: "An ArrayList is a derived type for dynamic sizing of an array. " +
								  "It can take any type specified by the template argument ArrayList<type>. " +
								  "An item is added with the add() method and accessed with the get() method.",
						  rank: 2,
						  id: 156
						},
						{ question: "What does a default method do in an interface definition?",
						  answer: "It is a default implementation of a method if not defined in an implementation.",
						  rank: 3,
						  id: 67
						},
						{ question: "What is a lambda expression?",
						  answer: "A form of functional programming added in Java 8. " +
								  "Lambda expressions are used primarily to define inline implementation of a functional interface, i.e., " +
								  "an interface with a single method only.",
						  rank: 3,
						  id: 68
						},
						{ question: "What does it mean when you get a compiler error message about two methods having the same erasure?",
						  answer: "It means that both functions have the same name (overloaded), but the types only differ by a type template (between the <> brackets). " +
								  "public void Foo( List<String> ) and public void Foo( List<Integer> )",
						  rank: 3,
						  id: 157
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questionsJava", function() {
	return {
		restrict: 'A',
		template: "<a name='java'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#java\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='java' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='java' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='java-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='java'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='java'>Suggest a Question</button>" +
				  "</div>"
	}
});