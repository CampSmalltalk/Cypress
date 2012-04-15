public
handleRequest: request
	| path |
	path := request uri path.
	self packagePaths do: [:packagePath |
		(path beginsWith: packagePath) ifTrue:  [ ^self handlePackageRequest: request ]].
	^ super handleRequest: request