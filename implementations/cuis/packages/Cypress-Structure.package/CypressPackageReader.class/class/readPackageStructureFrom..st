instance creation
readPackageStructureFrom: aPackagesDirectory

	^(self new)
		packageDirectory: aPackagesDirectory;
		read;
		yourself