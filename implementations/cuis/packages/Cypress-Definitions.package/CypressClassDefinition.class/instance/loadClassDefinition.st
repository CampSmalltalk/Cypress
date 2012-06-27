loading
loadClassDefinition

	 | cls |
	cls := self createClass.
	cls class instanceVariableNames: (self stringForVariables: self classInstVarNames).
	self comment notEmpty ifTrue: [ cls comment: self comment ]
