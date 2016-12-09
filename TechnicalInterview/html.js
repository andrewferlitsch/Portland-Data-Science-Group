technical.controller( 'htmlCtrl', function( $scope ) {
	$scope.subject 	= "HTML";
	$scope.questions = [{ question: "What is an element, tag and attribute?",
						  answer: "An element is a divisible item in HTML that starts with a start tag and ends with an end tag: e.g., <div></div>" +
								  "A tag is the name following the closed angle bracket < which identifies the type of element." +
								  "An attribute modifies the element. The type attribute makes this element a text input box <input type='text'>",
						  rank: 1
						},
						{ question: "What kind of elements go inside a form element?",
						  answer: "input and select",
						  rank: 1
						},
						{ question: "Give two examples of attributes.",
						  answer: "e.g., type, name, id, class, readonly, onclick, style",
						  rank: 1
						},
						{ question: "Describe how to load an external javascript file and CSS file.",
						  answer: "<script src='...'/> for Javascript and <link href='...'/>",
						  rank: 1
						},
						{ question: "HTML stands for what?",
						  answer: "Hypertext Markup Language",
						  rank: 1
						},
						{ question: "What is the element for the largest heading?",
						  answer: "<h1>",
						  rank: 1
						},
						{ question: "What is the element for a line break?",
						  answer: "<br/>",
						  rank: 1
						},
						{ question: "What is attribute in a hyperlink (a) to specify the target web address?",
						  answer: "href",
						  rank: 1
						},
						{ question: "In a hyperlink, how do you specify opening a web page in another browser?",
						  answer: "target='_blank'",
						  rank: 1
						},
						{ question: "What attribute/value do you use to define a checkbox?",
						  answer: "type='checkbox'",
						  rank: 1
						},
						{ question: "What elements are used for a numbered list and a bullet list?",
						  answer: "<ol> and <ul>, respectively",
						  rank: 1
						},
						{ question: "What is the element for indicating text is important?",
						  answer: "<strong>",
						  rank: 2
						},
						{ question: "What is the DOM? Can it be manipulated by the browser?",
						  answer: "Document Object Model defines how an HTML page is defined and parsed into elements. The DOM maybe accessed and " +
								  "modified by the browser using Javascript or CSS3.",
						  rank: 2
						},
						{ question: "Explain what happens in a form POST method and a form GET method.",
						  answer: "The values of the input elements are sent to the web page specified in the action attribute. " +
								  "In the GET method, they are sent as URL parameters. In the POST method, they are sent in the body of the HTTP request.",
						  rank: 2
						},
						{ question: "How do I capture a click event on an element?",
						  answer: "attribute: onclick='', where JS code is placed within the single quotes.",
						  rank: 2
						},
						{ question: "What element is used to define emphasised text?",
						  answer: "<em>",
						  rank: 2
						},
						{ question: "What event is used to detect a hover over an element?",
						  answer: "attribute: onmouseover='', where JS code is placed within the single quotes.",
						  rank: 3
						},
						{ question: "What is the difference between an inline and block element? Give an example of each.",
						  answer: "An inline element does not cause a line break and a block element does. <span> is an example of an inline element, " +
								  "and <p> is a block element.",
						  rank: 3
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
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='html'>Suggest A Better Answer</button><br/>Correct <input class='html-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='html'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='html'>Suggest a Question</button>" +
				  "</div>"
	}
});