technical.controller( 'networkCtrl', function( $scope ) {
	$scope.subject 	 = "Network";
	$scope.questions = [{ question: "What is the difference between unicast, multicast and broadcast?",
						  answer: "Unicast sends a message to a single IP address. Multi-cast sends a message " +
						          "to all IP addresses registered for the multicast on a subnet. Broadcast sends " +
								  "a message to all IP addresses on the subnet."},
						{ question: "In IPv4, what is a C-subnet? What are the max number of addresses?",
						  answer: "A C-subnet is the address range of the lower 8 bits of an IPv4 address range. " +
								  "It can hold 256 addresses."},
						{ question: "What is DNS? How does it work?",
						  answer: "Domain Name Service. A DNS Server takes a domain name and resolves it into an " +
								  "IP addresses via a lookup directory."},
						{ question: "What is wireshark?",
						  answer: "An application that is used by developers to view packets on the network" },
						{ question: "Describe the difference between UDP and TCP.",
						  answer: "UDP (User Datagram Protocol) and TCP (Transmission Control Protocol) both send" +
								  "data packets over a network. UDP does not guarantee delivery. TCP does. When the" +
								  "receiver receives a packet, it sends back an acknowledgement to the sender."
						}
					   ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsNetwork", function() {
	return {
		restrict: 'A',
		template: "<a name='network'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#network\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='network'>Suggest A Better Answer</button><br/>Correct <input class='network-correct' type='checkbox'/><br/><br/>" +
				  "	</li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='network'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='network'>Suggest a Question</button>" +
				  "</div>"
	} 
});