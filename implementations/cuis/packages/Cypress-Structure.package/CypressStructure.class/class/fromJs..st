instance creation
fromJs: jsObject

	^(self new) 
		fromJs: jsObject asCypressPropertyObject;
		yourself
