technical.controller( 'agileCtrl', function( $scope ) {
	$scope.subject 	= "Agile";
	$scope.questions = [{ question: "What is Agile Product Management",
						  answer: "An iterative, incremental method of managing the design and build activities of engineering, " +
								  "information technology and other business areas that aim to provide new product or service development " +
								  "in a highly flexible and interactive manner",
						  rank: 1
						},
						{ question: "What is the product owner's role",
						  answer: "A product owner decides which stories go into a sprint",
						  rank: 1
						},
						{ question: "What are story points?",
						  answer: "For each task in a sprint, it is the estimate of the amount of time to complete the task. Typically 1 story point " +
								  "is 1/2 day, 2 story points is 1 day, 3 story points is 2 days, 5 story points is a 5 days.",
						  rank: 1
						},
						{ question: "What does a scrum master do?",
						  answer: "A scrum master manages the sprint process, which includes sprint planning, scrums, and sprint reviews.",
						  rank: 1
						},
						{ question: "What is a scrum?",
						  answer: "A scrum is all hands meeting on a periodic schedule (e.g. daily) throughout a sprint. It is generally short and is used " +
						          "to synchronize work by each person saying what their status is, what they plan to do, and what resources or help they need.",
						  rank: 1
						},
						{ question: "What is the technical backlog?",
						  answer: "Any task, or portion of it, not completed in a sprint is put into the technical backlog.",
						  rank: 2
						},
						{ question: "What does a sprint consist of?",
						  answer: "A sprint consists of a sprint planning session, execution of tasks, followed by a sprint review and sometimes a sprint retrospective",
						  rank: 2
						},
						{ question: "What is the purpose of a standup scrum",
						  answer: "To give a quick round of status and expected tasks for the day by each member. " +
							      "It is called a standup to emphasize keeping the sprint as short as possible",
						  rank: 2
						},
						{ question: "Describe Kanban board.",
						  answer: "A Kanban board is a workflow process where tasks are reviewed and moved from various progressive states of completion. " +
							      "These typically include: unassigned, assigned, in progress, in test, in review, accepted (or completed).",
						  rank: 3
						},
						{ question: "What is Extreme Programming",
						  answer: "A development process consisting of frequent releases in short development cycles. " +
								  "Other elements include: programming in pairs or doing extensive code review, unit testing of all code, avoiding programming " +
								  "of features until they are actually needed.",
						  rank: 3
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsAgile", function() {
	return {
		restrict: 'A',
		template: "<a name='agile'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#agile\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='agile'>Suggest A Better Answer</button><br/>Correct <input class='agile-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='agile'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='agile'>Suggest a Question</button>" +
				  "</div>"
	}
});