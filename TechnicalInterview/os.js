technical.controller( 'osCtrl', function( $scope ) {
	$scope.subject 	= "OS";
	$scope.questions = [{ question: "What is a stack frame?",
						  answer: "The stack frame is a part of the program's memory address space for holding the " +
								  "the values of parameters and local variables per function call. Each time a function is " +
								  "called, a stack frame is pushed into this memory space, usually in sequential order. " +
								  "When the function returns, the stack frame is popped, releasing memory.",
						  rank: 1,
						  id: 109
						},
						{ question: "How many bytes are in a Unicode character?",
						  answer: "2 bytes",
						  rank: 1,
						  id: 110
						},
						{ question: "Explain how a pointer is dereferenced.",
						  answer: "The value of the pointer (an address of another section of memory) is loaded into a register. The register " +
								  "is then used as an argument to an assembly language instruction to fetch the value at the location specified by " +
								  "the register and place it into another register or variable.",
						  rank: 1,
						  id: 111
						},
						{ question: "Describe UTF-8 encoding",
						  answer: "A encoding consisting of one to four bytes. If the first byte has a leading zero bit, it is one byte long (ANSI). " +
						          "If it has two leading one bits, it is two bytes long, three leading one bits it is three bytes long, and four leading " +
								  "one bits it is four bytes long.",
						  rank: 2,
						  id: 112
						},
						{ question: "What is a GPU? How is it different from a CPU?",
						  answer: "",
						  rank: 2,
						  id: 113
						},
						{ question: "What does the MMU do when a page fault occurs in a virtual address space?",
						  answer: "The memory management unit (MMU) will map the physical memory page into the virtual address space.",
						  rank: 3,
						  id: 114
						},
						{ question: "What is SDRAM? How is it different from DRAM?",
						  answer: "Synchronous Dynamic RAM. SDRAM is an improvement because it synchronizes data transfer between the CPU and memory. SDRAM allows the CPU to process data while another process is being queued.",
						  rank: 3,
						  id: 115
						}
						{ question: "What is a Mutex?",
						  answer: "Short for Mutually Exclusion Object. " +
								  "A mutex is a program object that allows multiple program threads to share the same resource, but not simultaneously. " +
								  "If a thread places a lock on the mutex, then all other threads will block attempting to lock the mutex until it is released.",
						  rank: 3,
						  id: 201
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questionsOs", function() {
	return {
		restrict: 'A',
		template: "<a name='os'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#os\"'>&#9205; {{subject}}</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='os' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='os' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='os-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='os'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='os'>Suggest a Question</button>" +
				  "</div>"
	}
});