
#----------------------------------------------------------------------
# Initialization
#----------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS questions
(
  id        INT          NOT NULL PRIMARY KEY auto_increment,
  category  VARCHAR(16)  NOT NULL,
  question  VARCHAR(256) NOT NULL,
  answer    VARCHAR(256) NOT NULL,
  rank      SMALLINT(30) NOT NULL DEFAULT 1,

  INDEX(category),
  INDEX(rank)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;

DELETE FROM questions WHERE category = 'Network';

#----------------------------------------------------------------------
# Network
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Network',
    'What is DNS? How does it work?',
    'Domain Name Service. A DNS Server takes a domain name and resolves it into an IP addresses via a lookup directory.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Network',
    'Describe the difference between UDP and TCP.',
    'UDP (User Datagram Protocol) and TCP (Transmission Control Protocol) both send data packets over a network. UDP does not guarantee delivery. TCP does. When the receiver receives a packet, it sends back an acknowledgement to the sender.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Network',
    'In IPv4, what is a C-subnet? What are the max number of addresses?',
    'A C-subnet is the address range of the lower 8 bits of an IPv4 address range. It can hold 256 addresses.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Network',
    'What is WireShark?',
    'An application that is used by developers to view packets on the network.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Network',
    'What is IPv6?',
    'The IPv6 replaces the IPv4 Internet Address space. IPv4 was limited to 4 billion addresses (32-bits). IPv6 uses a 128-bit address, theoretically allowing 2^128, or approximately 3.4×1038 addresses.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Network',
    'What is the difference between unicast, multicast and broadcast?',
    'Unicast sends a message to a single IP address. Multi-cast sends a message to all IP addresses registered for the multicast on a subnet. Broadcast sends a message to all IP addresses on the subnet.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Network',
    'Explain the FTP protocol.',
    '',
    3
  );

