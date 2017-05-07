"# nlp v1.0"

#  Handling Narrative Fields in Datasets for Classification

nlp is a freely available command line application for preprocessing [text] narrative fields in 
datasets used for machine learning.

nlp takes as input a CSV file and outputs a new CSV file where the narrative fields are
preprocessed into bag of words. 

## Usage

	java -jar nlp.jar <options> csv-file
		-c cols	# columns to process (starting at index 0)
		-e word-list	# words to exclude (comma separated)
		-f w|d		# word counts (w = percentage of words, d = percentage in docs)
		-F		# word counts only
		-k word-list	# words to keep (comma separated)
		-l		# lemmatization
		-n		# no header (csv)
		-r		# word reduction
		-s		# stemming
		-S sflags	# stop word groups
		
## Examples

### Header Handling in CSV file

By default, the csv file is presumed to have a header and is excluded from the preprocessing.
If the file does not contain a header, then use the -n option to specify no header.

	# CSV file has no header
	java -jar nlp.jar -n mydata.csv

### Specifying columns to preprocess as narrative fields
	
Only the columns specified will be preprocessed. The remaining columns will be outputted in
the original (unprocessed) form. Columns are specified with the -c option, starting at index 0.

	# Columns 1 and 2 are narrative fields
	java -jar nlp.jar -c 1,2 mydata.csv
	
### Specifying Stop Words

By default, no stop words are removed. Stop word removal is specified with the -S option. The
arguments to this option are:

	p	# Porter List (includes a,d,c,r,P,q)
	a	# Articles
	d	# Demonstratives
	c	# Conjunctions
	r	# Prepositions
	P	# Pronouns
	q	# Question words (e.g., where, what)
	n 	# Numbers (digit and text)
	Q	# Quantifiers (e.g., big, large)
	
Multiple arguments may be specified by separating them by commas. 

	# Set stop words to Porter List and Numbers
	java -jar nlp.jar -c 1 -S p,n mydata.csv
	
In the case of the Porter stop words, one can exclude groupings, such as conjunctions, by 
proceeding the corresponding argument with a not sign (!).

	# Set stop words to Porter List, except for conjunctions
	java -jar nlp.jar -c 1 -S p,!c mydata.csv
	
The stop word removal process will also expand common single word abbreviations to their full
word form.
	
### Including (and Excluding) Additional Stop Words

Additional stop words (beyond -S groupings) are added using the -e option, or excluded (i.e., keep)
with the -k option.

	# Add cat and dog to the stop word list
	java -jar nlp.jar -c 1 -S p -e "cat,dog" mydata.csv

	# Remove here and far from the stop word list
	java -jar nlp.jar -c 1 -S p -k "here,far" mydata.csv
	
### Stemming

Stemming of words (removing word endings) is enabled with the -s option. When specified, each word is converted into its
root stem, according to grammatical syntax rules. For example, reading and reads are both converted
to read. For words whose endings are exceptions to the rule, the stemmed root may differ from
the actual word root. For example, thieves becomes thiefe, and recover becomes recov.

	# Stem (remove word endings)
	java -jar nlp.jar -c 1 -S p -s mydata.csv
	
### Lemmatization

Lemmatization is an extension of stemming, which attempts to fix stemmed words that do not
match the actual word root. This lemmatization has a builtin dictionary which can detect and fix
common miss-stemmed words.

	# Lemma (remove word endings and replace with actual root)
	java -jar nlp.jar -c 1 -S p -l mydata.csv
	
### Word Reduction

Word reduction is reducing words that are related to a single common word. For example, man, men,
male, guy and boy are reduced to the word male, and brother, sister are reduced to sibling. 
Word reduction is specified with the -r option.

	# Word reduction
	java -jar nlp.jar -c 1 -S p -l -r mydata.csv
	
### Outputting without Frequency 

By default, the narrative fields are replaced with a bag of words, represented as a comma separated
list, in the order that they appeared the narrative. If a word appears multiple times in the
narrative, it will appear multiple times in the bag of words.

For example, the sentence:

	The quick brown fox jumped over the fence.
	
Will get replaced with (-Sp -l):

	brown,fox,jump,fence
	
### Outputting Frequency Counts

You can output word frequency counts (sorted) only with the -F option; no preprocessed CSV file is
generated. Each unique word in the dataset will be displayed with the number of times it occurs,
the word percentage (total times it appears / total unique words), and
the document percentage (total times it appears in a narrative field / total number of processed narrative fields).

	dog:5,0.2,0.125
	cat:4,0.15,0.12
	
### Outputting with Frequency

The bag of words outputting can be further augmented with the frequency count with the -f option.
The argument 'w' will append word percentage, and the argument 'd' will append the document percentage.
	
	# Add word percentage to bag of word outputs
	java -jar nlp.jar -c 1 -S p -l -r -F w mydata.csv
	
	1,"brown:0.10,fox:0.005,jump:0.003,fence:0.006"
	
Note, when used this option, the dataset is processed twice (doubling the time), once to obtain
the word frequency counts and a second pass to generate the preprocessed CSV file with the
corresponding bag of words and frequency counts.
