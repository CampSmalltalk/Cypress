"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: private
"
whitespace
	"Strip whitespaces from the input stream."

	[ stream atEnd not and: [ stream peek isSeparator ] ]
		whileTrue: [ stream next ]
