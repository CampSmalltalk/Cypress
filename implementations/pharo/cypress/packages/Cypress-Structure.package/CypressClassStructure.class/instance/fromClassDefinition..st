initialization
fromClassDefinition: classDefinition

	self isClassExtension: false.
	self name: classDefinition name.
	self comment: classDefinition comment.
  	self superclassName: classDefinition superclassName.
	self instanceVariableNames: classDefinition instVarNames.
	self classInstanceVariableNames: classDefinition classInstVarNames.
