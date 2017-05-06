"# nlp v1.0"

#  Handling Narrative Fields in Datasets for Classification

nlp is a freely available command line application for preprocessing narrative fields in 
datasets used for machine learning.

It is common for government and public datasets to include narrative fields, 
such as inspection reports, incident reporting, surveys, 911 calls, fire response, etc. 
In additional to categorical fields, such as datetime, location, demographics, 
these datasets tend to include a narrative description (e.g., what happened).  
It is typically in the narrative field that the most interesting data resides for the purpose 
of classifying. The problem, is that since the narrative is human interpreted and entered, 
each entry may be unique and if we use the whole entry as a single value, 
one will end up with an overfitted model that works only on the training data.

# Usage

	nlp <options> csv-file
		-c cols	# columns to process
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
		