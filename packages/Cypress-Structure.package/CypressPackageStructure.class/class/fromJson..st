instance creation
fromJson: aJsonString

	^self fromJs: (Compiler new eval: '(', aJsonString , ')')
