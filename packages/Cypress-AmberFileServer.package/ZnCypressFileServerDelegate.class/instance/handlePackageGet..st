private
handlePackageGet: request

	| json |
	^ZnResponse ok: (ZnStringEntity html: json)