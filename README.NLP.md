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
		-R reader	# reader type (mem,line,mapped)
		-s		# stemming
		-S sflags	# stop word groups
		-t type		# input file type
		
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
	
### Including (and Excluding) Additional Stop Words

Additional stop words (beyond -S groupings) are added using the -e option, or excluded (i.e., keep)
with the -k option.

	# Add cat and dog to the stop word list
	java -jar nlp.jar -c 1 -S p -e "cat,dog" mydata.csv

	# Remove here and far from the stop word list
	java -jar nlp.jar -c 1 -S p -k "here,far" mydata.csv
	