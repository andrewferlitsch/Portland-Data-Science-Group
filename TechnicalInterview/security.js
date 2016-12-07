technical.controller( 'securityCtrl', function( $scope ) {
	$scope.subject 	= "Security";
	$scope.questions = [{ question: "What is a one-way hash? Name at least one popular method.",
						  answer: "A type of encryption where once something is encrypted it cannot be decrypted back to the original form." +
						          "It is commonly used for encrypting passwords. The one-way hashed version of the password is stored instead of the original password." +
								  "Popular methods are SHA1 and MD5."
						},
						{ question: "What is the difference between http:// and https:// ?",
						  answer: "http sends data unencrypted. https sends it encrypted using SSL"
						},
						{ question: "Describe how Public Key Encryption works.",
						  answer: "Public Key Encryption (PKE) is a form of encryption where one key (public) is used to encrypt a message, while a" +
								  "another key (private) is used to decrypt the message. The receiver has a public key which the sender uses to encrypt " +
								  "the message, and the receiver then decrypts it using the private key. As long as the receiver makes their public key available, " +
								  "then anybody can send an encrypted message to the receiver, but only the receiver can decrypt it."
						},
						{ question: "What is SSL?",
						  answer: "Secured Sockets Layer. It is a form of encryption over TCP/IP +networks between clients and servers." +
						          "The server will have an SSL certificate which contains a public/private key used for the encryption." +
								  "The SSL certificate is obtained and authenticated by a Certificate Authority (CA)."
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsSecurity", function() {
	return {
		restrict: 'A',
		template: "<a name='security'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#security\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				   "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name=''>Suggest A Better Answer</button><br/>Correct <input class='security-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button  class='w3-btn w3-green score' name='security'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='security'>Suggest a Question</button>" +
				  "</div>"
	}
});