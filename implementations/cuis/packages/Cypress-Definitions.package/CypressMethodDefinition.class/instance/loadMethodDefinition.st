loading
loadMethodDefinition

	self actualClass
		compile: self source
		classified: self category
		withStamp: self timeStamp
		notifying: nil.