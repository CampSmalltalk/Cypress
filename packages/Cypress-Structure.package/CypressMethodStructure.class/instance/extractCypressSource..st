private
extractCypressSource: aString

	| stream categoryStream sourceStream readingCategory |
	stream := StringStream on: aString.
	stream reset.
	categoryStream := StringStream on: String new.
	sourceStream := StringStream on: String new.
	readingCategory := true.
	[ stream atEnd] whileFalse: [ | char |
		char := stream next.
		readingCategory
			ifTrue: [
				char = String lf
					ifTrue: [ readingCategory := false ]
					ifFalse: [ categoryStream nextPutAll: char ]]
			ifFalse: [ sourceStream nextPutAll: char ]].
	self category: categoryStream contents.
	self source: sourceStream contents
