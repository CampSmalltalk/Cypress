loading
createClass

	| superClass |
	superClass := Smalltalk at: self superclassName.
	^ClassBuilder new
		superclass: superClass 
		subclass: self name
		instanceVariableNames: (self stringForVariables: self instVarNames)
		classVariableNames: '' poolDictionaries: '' category: self category
