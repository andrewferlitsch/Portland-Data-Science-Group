technical.controller( 'oopCtrl', function( $scope ) {
	$scope.subject 	= "OOP Design";
	$scope.questions = [{ question: "What is data encapsulation?",
						  answer: "Data encapsulation is where the data in a class is hidden from external objects. The data is only " +
								  "accessible by the class methods.",
						  rank: 1,
						  id: 116
						},
						{ question: "Describe how public, protected and private scope work.",
						  answer: "public - data or method is accessible to all external objects. " +
								  "protected - data or method is accessible only by the class and objects that inherit the class. " +
								  "private - data or method is accessible only by the class.",
						  rank: 1,
						  id: 117
						},
						{ question: "What is an abstract class?",
						  answer: "An abstract class is a class where one or more declared methods require an implementation. " +
								  "A derived (subclass, extended) that inherits the abstract class must implement all the methods " +
								  "that do not have an implementation. An abstract class cannot be instantiated.",
						  rank: 2,
						  id: 118
						},
						{ question: "What is polymorphism? Give an example.",
						  answer: "Multiple inheritance of classes. For example, an OOP design for a vehicle might have a base class for wheels, " +
								  "and a base class for engine. The wheels base class may have derived classes for truck-wheels and passenger-wheels, " +
								  "and the engine base class may have derived classes for gas and diesel engine. A truck object might inherit the " +
								  "diesel engine and truck wheels derived classes, while a passenger vehicle might inherit the gas engine and passenger wheel " +
								  "derived classes.",
						  rank: 2,
						  id: 119
						},
						{ question: "What is a Singleton design pattern?",
						  answer: "A design pattern where only one instance of an object (class) can be instantiated.",
						  rank: 2,
						  id: 120
						},
						{ question: "What does a static field (variable) in a class do?",
						  answer: "There is only one instance of the field (variable) across all instances of the class.",
						  rank: 2,
						  id: 121
						},
						{ question: "What is a Factory design pattern?",
						  answer: "The Factory Method defines an interface for creating objects, but lets subclasses decide which classes to instantiate.",
						  rank: 3,
						  id: 122
						},
						{ question: "What is an Iterator design pattern?",
						  answer: "Provide a way to access the elements of an aggregate object sequentially without exposing its underlying representation.",
						  rank: 3,
						  id: 123
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questionsOop", function() {
	return {
		restrict: 'A',
		template: "<a name='oop'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#oop\"'>&#9205; {{subject}}</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='oop' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='oop' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='oop-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='oop'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='oop'>Suggest a Question</button>" +
				  "</div>"
	}
});