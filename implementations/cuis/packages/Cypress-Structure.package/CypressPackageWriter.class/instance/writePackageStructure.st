writing
writePackageStructure

	self writePackageStructureClasses:  self packageStructure classes isClassExtension: false.
	self writePackageStructureClasses:  self packageStructure extensions isClassExtension: true
