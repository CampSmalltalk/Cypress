private
classStructureFrom: classPropertiesDict 

	^(CypressClassStructure new)
		isClassExtension: true;
		properties: classPropertiesDict;
		packageStructure: packageStructure;
		yourself