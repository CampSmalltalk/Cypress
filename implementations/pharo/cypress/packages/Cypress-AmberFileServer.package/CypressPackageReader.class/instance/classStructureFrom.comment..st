private
classStructureFrom: classPropertiesDict comment: classComment.

	^(self classStructureFrom: classPropertiesDict)
		isClassExtension: false;
		comment: classComment;
		yourself