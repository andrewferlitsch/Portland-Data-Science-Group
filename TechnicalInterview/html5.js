technical.controller( 'html5Ctrl', function( $scope ) {
	$scope.subject 	= "HTML5";
	$scope.questions = [
						{ question: "Name some HTML5 new features.",
						  answer: "Geolocation, Canvas, Structural elements, embedding Audio/Video, Progess Bar, Datalists",
						  rank: 1,
						  id: 26
						},
						{ question: "Name some input types added by HTML5",
						  answer: "color, date, datetime, datetime-local, email, month, number, range",
						  rank: 1,
						  id: 27
						},
						{ question: "What is the DOCTYPE declaration in HTML5?",
						  answer: "<!DOCTYPE html>",
						  rank: 1,
						  id: 28
						},
						{ question: "What is the placeholder attribute, and where is it used?",
						  answer: "Provides a hint that appears in light gray in a input text or textarea element.",
						  rank: 1,
						  id: 29
						},
						{ question: "What is or are the elements for embedding a video and audio file respectively?",
						  answer: "<video> and <audio>.",
						  rank: 1,
						  id: 30
						},
						{ question: "An SVG graphic is specified in what format?",
						  answer: "XML",
						  rank: 2,
						  id: 31
						},
						{ question: "What does the contenteditable attribute do?",
						  answer: "It can be set to true or false, indicating if the content within the element start/end tags can be edited.",
						  rank: 2,
						  id: 32
						},
						{ question: "What is geolocation in HTML5?",
						  answer: "The HTML Geolocation API is used to locate a user's geographical position. " +
								  "It will use the GPS information from a user's device, if available, otherwise it use " +
								  "the IP address to determine the location of the user's ISP.",
						  rank: 2,
						  id: 33
						},
						{ question: "Name the new structural elements added?",
						  answer: "<header>, <footer>, <section>, <article>, <nav>, <aside>, <main>, <summary>, <mark> and <time>",
						  rank: 2,
						  id: 34
						},
						{ question: "What is the syntax of a custom data attribute?",
						  answer: "data-some-name='some-value', where some-name is name of the attribute.",
						  rank: 2,
						  id: 35
						},
						{ question: "What does the required attribute do?",
						  answer: "Forces an input element to be non-empty. If a submit occurs and the element is empty, the submit is disabled " +
								  "and the input box is red highlighted.",
						  rank: 2,
						  id: 36
						},
						{ question: "Describe the File Drag and Drop API.",
						  answer: "",
						  rank: 3,
						  id: 37
						},
						{ question: "Describe how the <output> element works.",
						  answer: "",
						  rank: 3,
						  id: 38
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questionsHtml5", function() {
	return {
		restrict: 'A',
		template: "<a name='html5'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#html5\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='html5' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='html5' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='html5-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='html5'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='html5'>Suggest a Question</button>" +
				  "</div>"
	}
});