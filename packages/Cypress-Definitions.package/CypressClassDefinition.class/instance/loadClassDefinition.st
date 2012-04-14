loading
loadClassDefinition

	 | cls |
	cls := self createClass.
	cls class instanceVariableNames: self classInstanceVariablesString.
	self comment notEmpty ifTrue: [ cls comment: self comment ]
