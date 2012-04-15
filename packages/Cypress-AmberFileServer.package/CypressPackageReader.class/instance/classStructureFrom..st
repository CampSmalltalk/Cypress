private
classStructureFrom: classPropertiesDict 

	^(CypressClassStructure new)
		isClassExtension: false;
		properties: classPropertiesDict;
		yourself