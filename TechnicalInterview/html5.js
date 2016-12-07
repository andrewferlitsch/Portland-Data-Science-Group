technical.controller( 'html5Ctrl', function( $scope ) {
	$scope.subject 	= "HTML5";
	$scope.questions = [{ question: "What is geolocation in HTML5?",
						  answer: "The HTML Geolocation API is used to locate a user's geographical position. " +
								  "It will use the GPS information from a user's device, if available, otherwise it use " +
								  "the IP address to determine the location of the user's ISP."
						},
						{ question: "Name some input types added by HTML5",
						  answer: "color, date, datetime, datetime-local, email, month, number, range"
						},
						{ question: "Name the new structural elements added?",
						  answer: "<header>, <footer>, <section>, <article>, <nav>, <aside>, <main>, <summary>, <mark> and <time>"
						},
						{ question: "Name some HTML5 new features.",
						  answer: "Geolocation, Canvas, Structural elements, embedding Audio/Video, Progess Bar, Datalists"
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsHtml5", function() {
	return {
		restrict: 'A',
		template: "<a name='html5'/>" +
				  "<h1 style='text-align: center' ng-click='show=!show' onclick='location.href=\"#html5\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span><br/>Correct <input class='html5-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button onclick='Tally( \"html5\")'>Score</button>" +
				  "</div>"
	}
});