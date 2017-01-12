# In Progress
#----------------------------------------------------------------------
# Initialization
#----------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS questions
(
  id        INT          NOT NULL PRIMARY KEY auto_increment,
  category  VARCHAR(16)  NOT NULL,
  question  VARCHAR(256) NOT NULL,
  answer    VARCHAR(256) NOT NULL,
  rank      TINYINT      NOT NULL DEFAULT 1,
  toggle    TINYINT      NOT NULL DEFAULT 1,

  INDEX(category),
  INDEX(rank)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;

DELETE FROM questions WHERE category = 'Security';

#----------------------------------------------------------------------
# Security
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Security',
    'What is the difference between http:// and https:// ?',
    'http sends data unencrypted. https sends it encrypted using SSL',
    1,
	0
  );
  
INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Security',
    'How does http:// send data?',
    'This HTTP prefix sends data unencrypted.',
    1,
	1
  );
  
INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Security',
    'How does https:// send data?',
    'This HTTP prefix sends data encrypted using SSL.',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Security',
    'What is SSL?',
    'Secured Sockets Layer. It is a form of encryption over TCP/IP +networks between clients and servers. The server will have an SSL certificate which contains a public/private key used for the encryption. The SSL certificate is obtained and authenticated by a Certificate Authority (CA).',
    1
  );


INSERT INTO questions (category, question, answer, rank, toggle ) 
  VALUES (
    'Security',
    'What is a Trojan Horse?',
    'Malicious software that is hidden inside what might appear inside something that might otherwise appear legitimate, in an email message, social media, or web site.',
    1,
	1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Security',
    'What is a one-way hash? Name at least one popular method.',
    'A type of encryption where once something is encrypted it cannot be decrypted back to the original form. It is commonly used for encrypting passwords. The one-way hashed version of the password is stored instead of the original password. Popular methods are SHA1 and MD5.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Security',
    'What is two factor authentication?',
    'An additional authentication device that produces an access token which has a short life (e.g., 60 seconds), which must be used in conjunction with a password.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Security',
    'Describe how Public Key Encryption works.',
    'Public Key Encryption (PKE) is a form of encryption where one key (public) is used to encrypt a message, while a another key (private) is used to decrypt the message. The receiver has a public key which the sender uses to encrypt the message, and the receiver then decrypts it using the private key. As long as the receiver makes their public key available, then anybody can send an encrypted message to the receiver, but only the receiver can decrypt it.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Security',
    'What is a Certificate Authority (CA)?',
    'A certificate authority (CA) is an entity that issues digital certificates. A digital certificate certifies the ownership of a public key by the named subject of the certificate.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Security',
    'What is Cross Site Scripting?',
    'XSS attacks occur when malicious code is injected into a website, generally through an input control.',
    3
  );

