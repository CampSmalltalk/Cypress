*Cypress-Structure
isSafeForHTTP
	"whether a character is 'safe', or needs to be escaped when used, eg, in a URL"

	^  value < 128
		and: [ self isAlphaNumeric
				or: [ '.-_' includes: self ]]
