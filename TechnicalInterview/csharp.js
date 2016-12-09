technical.controller( 'csharpCtrl', function( $scope ) {
	$scope.subject 	= "C#";
	$scope.questions = [{ question: "Name two ways the using statement is used.",
						  answer: "As a directive, it is used to create an alias for a namespace or to import types defined in other namespaces. " +
								  "As a statement, it defines a scope at the end of which an object will be disposed.",
						  rank: 1
						},
						{ question: "What is the scope of the variable 'i': for (int i = 0; i<10;i++) {}",
						  answer: "The scope is within the for loop. It has not scope outside of the for loop.",
						  rank: 1
						},
						{ question: "What is the program entry point of a C# application?",
						  answer: "The class that contains a static Main() definition.",
						  rank: 1
						},
						{ question: "Describe how try, catch and finally work.",
						  answer: "These constructs are used for exception handling. If an exception occurs in a try block, then the " +
								  "the code in the corresponding catch block is executed; otherwise it is not. Regardless of whether an " +
								  "exception occurs in a try/catch block, the code in the finally block is always executed. If a return occurs, " +
								  "the code in the finally is executed before the return.",
						  rank: 2
						},
						{ question: "What is managed code?",
						  answer: "The distinction between managed and unmanaged code is prevalent and only relevant when developing applications that interact with the .NET Framework or other Common Language Runtime (CLR) implementations. " +
								  "Managed code prevents typical mistakes that lead to security holes, handles memory management, type checking and releasing unneeded objects.",
						  rank: 2
						},
						{ question: "How are objects deleted?",
						  answer: "There is no explicit delete call in C#. A reference count is instead maintained. Periodically, a garbage collection task happens in the " +
								  "background which releases all memory with zero reference counts (unused).",
						  rank: 2
						},
						{ question: "What is the method to automatically enforce garbage collection?",
						  answer: "System.GC.Collect()",
						  rank: 3
						},
						{ question: "What does a LINQ statement do?",
						  answer: "LINQ provides a consistent query model across different data stores and formats. All LINQ query operations consist of three distinct actions: " +
								  "1. Obtain the data store, 2. Create the query, 3. Execute the query.",
						  rank: 3
						},
						{ question: "Explain Reflection.",
						  answer: "Reflection reads an object's metadata information (type, parameters, etc). This allows creating and invoking methods on objects not known at compile time.",
						  rank: 3
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsCsharp", function() {
	return {
		restrict: 'A',
		template: "<a name='csharp'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#csharp\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='rank'>Rank {{question.rank}}</span> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='csharp'>Suggest A Better Answer</button><br/>Correct <input class='csharp-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button onclick='Tally( \"csharp\")' class='w3-btn w3-green score' name='csharp'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='csharp'>Suggest a Question</button>" +
				  "</div>"
	}
});