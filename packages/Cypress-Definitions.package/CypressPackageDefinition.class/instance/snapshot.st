snapshotting
snapshot
	| package definitions name map  |
	package := Package named: self name.
	definitions := OrderedCollection new.
	package sortedClasses do: [:cls |
        	definitions add: cls asCypressClassDefinition.
                ((cls methodDictionary values) sorted: [:a :b | a selector <= b selector]) do: [:method |
			(method category match: '^\*') ifFalse: [ 
				definitions add: method asCypressMethodDefinition ]].
                ((cls class methodDictionary values) sorted: [:a :b | a selector <= b selector]) do: [:method |
			(method category match: '^\*') ifFalse: [ 
				definitions add: method asCypressMethodDefinition ]]].
	name := package name.
	(Package sortedClasses: Smalltalk current classes) do: [:each |
		{each. each class} do: [:aClass |
			map := Dictionary new.
			aClass protocolsDo: [:category :methods | 
				(category match: '^\*', name) ifTrue: [ map at: category put: methods ]].
			(map keys sorted: [:a :b | a <= b ])  do: [:category | 
				((map at: category) sorted: [:a :b | a selector <= b selector]) do: [:method |  definitions add: method asCypressMethodDefinition ]]]].
	^ CypressSnapshot definitions: definitions
