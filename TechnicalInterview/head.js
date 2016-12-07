technical.controller( 'interviewCtrl', function( $scope ) {
})
.directive( "interview", function() {
	return {
		restrict: 'A',
		template: "<div style='text-align: center'>" +
				  "<div style='font-size: 24pt; font-weight: bold;'>The Technical Interview</div>" +
				  "<h2>Portland Data Science Group</h2>" +
				  "</div>" +
				  "<div style='font-size: 16pt'>" +
				  "<p>For those wanting to prepare for an in-person technical interview, see our <button id='guide' class='w3-btn w3-green'>Guide</button></p>" +
				  "</div>" +
				  "<div style=''>" +
				  "<h3>Preparing for a Technical Phone Screen</h3>" +
				  "<p>Use our question/answer section below to practice a phone screen with another person. " +
				  "Each category will display three randomly selected questions.</p>" +
				  "<ul>" +
				  "	<li>The interviewee (you) tells the interviewer (other person) categories to be tested on.</li>" +
				  "	<li>For each selected category, the interviewer clicks on the category, which will display three random questions and suggested answers.</li>" +
				  "	<li>The interviewer will ask each question.</li>" +
				  "	<li>If the interviewer feels the answer was sufficient, then the interviewer checks the Correct box.</li>" +
				  "</ul>" +
				  "</div>" 
	}
});