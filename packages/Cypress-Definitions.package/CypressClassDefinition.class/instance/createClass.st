loading
createClass

	| superClass |
	superClass := Smalltalk current at: self superclassName.
	^ClassBuilder new
		superclass: superClass 
		subclass: self name
		instanceVariableNames: self instVarNames 
		package: self category
