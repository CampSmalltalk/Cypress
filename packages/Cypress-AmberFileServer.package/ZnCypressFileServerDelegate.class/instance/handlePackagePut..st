private
handlePackagePut: request

	| packageDir packageStructure |
	[
		packageStructure := CypressPackageStructure fromJson: request entity string.
		CypressPackageWriter 
			writePackageStructure: packageStructure
			to: (packageDir := self packageDirectoryFor: request)]
				on: Error
				do: [:ex | self halt.
					self notifyAmberFailed: 'PUT' in: packageDir fullName message: ex messageText.
					^ZnResponse serverError: ex messageText ].
	self notifyAmberCommitIn: packageDir fullName, '/', packageStructure name.
	^ZnResponse created: request uri