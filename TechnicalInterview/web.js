technical.controller( 'webCtrl', function( $scope ) {
	$scope.subject 	= "Web";
	$scope.questions = [{ question: "What is a CDN?",
						  answer: "A content delivery network (CDN) is a system of distributed servers (network) that deliver webpages and other Web content to a user based on the geographic locations of the user.",
						  rank: 1,
						  id: 1
						},
						{ question: "Name the most common HTTP request methods.",
						  answer: "GET, POST, PUT, DELETE",
						  rank: 1,
						  id: 2
						},
						{ question: "How are parameters passed in a GET method?",
						  answer: "They're are passed as URL parameters.",
						  rank: 1,
						  id: 3
						},
						{ question: "What is a Single Page Application (SPA)?",
						  answer: "SPA web application loads a single HTML page. As the user interacts with the page, the page is updated by modifying the DOM and new content is obtained by AJAX calls.",
						  rank: 2,
						  id: 4
						},
						{ question: "What is AJAX?",
						  answer: "AJAX is an asynchronous method in Javascript to make calls to server side scripts. " +
								  "It uses the XMLHttpRequest object. Responses to the call typically are in JSON or XML format. " +
								  "The method is used to send or receive data to/from a server without refreshing the whole page.",
						  rank: 2,
						  id: 5
						},
						{ question: "What is Model View Controller (MVC)?",
						  answer: "Model–view–controller (MVC) is a software design pattern for implementing user interfaces on computers. " +
								  "It divides the application into three interconnected components: 1) Model - represents the data, 2) View - " +
								  "how the data is visualized, and 3) Controller - how the data is manipulated and bound to the UI.",
						  rank: 3,
						  id: 6
						},
						{ question: "Describe what a REST API does. What is meant by stateless?",
						  answer: "A REST API call is made between a web application and a server via a HTTP request. " +
								  "The endpoint identifies the call or service being requested and the arguments are passed as query string (?parameters) appended to the URL. " +
								  "A REST API is considered stateless in that no state change persist across calls.",
						  rank: 3,
						  id: 7
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questionsWeb", function() {
	return {
		restrict: 'A',
		template: "<a name='web'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#web\"'>&#9205; {{subject}}</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>"+
				   "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='web' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='web' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='web-correct' type='checkbox'/><br/><br/></li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='web'>Score</button>" + 
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='web'>Suggest a Question</button>" +
				  "</div>"
	}
});