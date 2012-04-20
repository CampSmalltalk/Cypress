public
handleRequest: request
	| uri path |
	Transcript show: '.'.
	uri := request uri.
	uri pathSegments ~~ nil 
		ifTrue: [ 
			path := uri path.
			self packagePaths do: [:packagePath |
				(path beginsWith: packagePath) ifTrue:  [ ^self handlePackageRequest: request ]]].
	^ super handleRequest: request