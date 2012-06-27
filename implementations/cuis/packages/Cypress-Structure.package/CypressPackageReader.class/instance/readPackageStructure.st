reading
readPackageStructure
	packageStructure _ CypressPackageStructure new name: self packageDirectory localName.
	self packageDirectory entries do: [ :entry |
		entry name first ~= $. ifTrue: [
			(entry name endsWith: '.class') ifTrue: [
				self packageStructure classes add: (self readClassStructureFromEntry: entry) ].
			(entry name endsWith: '.extension') ifTrue: [
				self packageStructure extensions add: (self readExtensionClassStructureFromEntry: entry) ]]]