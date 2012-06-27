instance creation
fromJson: aJsonString

	^self fromJs: (CypressJsonParser parse: aJsonString)
