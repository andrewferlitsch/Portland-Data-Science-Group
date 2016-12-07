technical.controller( 'htmlCtrl', function( $scope ) {
	$scope.subject 	= "HTML";
	$scope.questions = [{ question: "What is an element, tag and attribute?",
						  answer: "An element is a divisible item in HTML that starts with a start tag and ends with an end tag: e.g., <div></div>" +
								  "A tag is the name following the closed angle bracket < which identifies the type of element." +
								  "An attribute modifies the element. The type attribute makes this element a text input box <input type='text'>"
						},
						{ question: "What is the DOM? Can it be manipulated by the browser?",
						  answer: "Document Object Model defines how an HTML page is defined and parsed into elements. The DOM maybe accessed and " +
								  "modified by the browser using Javascript or CSS3."
						},
						{ question: "What kind of elements go inside a form element?",
						  answer: "input and select"
						},
						{ question: "Describe how to load an external javascript file and CSS file.",
						  answer: "<script src='...'/> for Javascript and <link href='...'/>"
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsHtml", function() {
	return {
		restrict: 'A',
		template: "<a name='html'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#html\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small'>Suggest A Better Answer</button><br/>Correct <input class='html-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' meta='html'>Score</button>" +
				  "</div>"
	}
});