public
handleRequest: request
	| uri |
	Transcript show: '.'.
	uri := request uri.
	uri pathSegments ~~ nil 
		ifTrue: [ 
			(uri path beginsWith: self cypressPackageTag) 
				ifTrue:  [^self handlePackageRequest: request  ]].
	^ super handleRequest: request