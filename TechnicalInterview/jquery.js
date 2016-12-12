technical.controller( 'jqueryCtrl', function( $scope ) {
	$scope.subject 	= "JQuery";
	$scope.questions = [{ question: "What is the shortcut for loading jQuery code after the document ready event?",
						  answer: "$(function() { }",
						  rank: 1,
						  id: 202
						},
						{ question: "What does jQuery use for selectors?",
						  answer: "CSS selectors and some custom selectors",
						  rank: 1,
						  id: 203
						},
						{ question: "What does this select: $(\"div.cat\")",
						  answer: "All div elements with class = cat",
						  rank: 1,
						  id: 204
						},
						{ question: "In Progress",
						  answer: "",
						  rank: 2,
						  id: 0
						},
						{ question: "In Progress",
						  answer: "",
						  rank: 3,
						  id: 0
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questionsJquery", function() {
	return {
		restrict: 'A',
		template: "<a name='jquery'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#jquery\"'>&#9205; {{subject}}</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='jquery' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='jquery' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='correct' type='checkbox'/><br/><br/></li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='jquery'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='jquery'>Suggest a Question</button>" +
				  "</div>"
	}
});