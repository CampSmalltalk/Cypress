instance creation
fromJson: aJsonString

	^self fromJs: (MCFileTreeJsonParser parse: aJsonString)
