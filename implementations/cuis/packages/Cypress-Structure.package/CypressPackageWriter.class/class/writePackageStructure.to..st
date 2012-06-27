instance creation
writePackageStructure: aPackageStructure to: aPackagesDirectory

	self new
		packageStructure: aPackageStructure;
		rootDirectory: aPackagesDirectory;
		write