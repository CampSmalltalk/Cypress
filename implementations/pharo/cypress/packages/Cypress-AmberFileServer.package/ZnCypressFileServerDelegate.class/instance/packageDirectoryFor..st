private
packageDirectoryFor: request

	| path |
	path := request uri path.
	path := path copyFrom:self cypressPackageTag size + 1 to: path size.
	^FileDirectory on: self directory fullName, FileDirectory slash, path.