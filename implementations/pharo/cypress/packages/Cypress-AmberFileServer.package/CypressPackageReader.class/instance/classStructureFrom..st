private
classStructureFrom: classPropertiesDict 

	^(CypressClassStructure new)
		isClassExtension: true;
		properties: classPropertiesDict;
		yourself