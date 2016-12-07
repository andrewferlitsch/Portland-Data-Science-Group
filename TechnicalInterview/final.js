technical.controller( 'finalCtrl', function( $scope ) {
	$scope.title 	= "Final Score";
	$scope.show 	= false;
})
.directive( "final", function() {
	return {
		restrict: 'A',
		template: "<a name='final'/>" +
				  "<button id='final' class='w3-btn w3-green' ng-click='show=!show'>Final Score</button>" +
				  "<div ng-show='show'>" +
				  "	<p>Number of Questions: <span id='totalQuestions'></span></p>" +
				  "	<p>Total Correct: <span id='totalCorrect'></span></p>" +
				  " <p>Percent Correct: <span id='percentCorrect'></span></p>" +
				  "</div>"
	}
});