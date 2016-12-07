technical.controller( 'osCtrl', function( $scope ) {
	$scope.subject 	= "OS";
	$scope.questions = [{ question: "What is a stack frame?",
						  answer: ""
						},
						{ question: "How many bytes are in a Unicode character?",
						  answer: "2 bytes"
						},
						{ question: "Describe UTF-8 encoding",
						  answer: "A encoding consisting of one to four bytes. If the first byte has a leading zero bit, it is one byte long (ANSI)." +
						          "If it has two leading one bits, it is two bytes long, three leading one bits it is three bytes long, and four leading " +
								  "one bits it is four bytes long."
						},
						{ question: "What does the MMU do when a page fault occurs in a virtual address space?",
						  answer: "The memory management unit (MMU) will map the physical memory page into the virtual address space."
						},
						{ question: "What is SDRAM? How is it different from DRAM?",
						  answer: "Synchronous Dynamic RAM. SDRAM is an improvement because it synchronizes data transfer between the CPU and memory. SDRAM allows the CPU to process data while another process is being queued."
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsOs", function() {
	return {
		restrict: 'A',
		template: "<a name='os'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#os\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better'>Suggest A Better Answer</button><br/>Correct <input class='os-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='os'>Score</button>" +
				  "</div>"
	}
});