writing
writePackageStructureClasses: classStructures isClassExtension: isClassExtension
	| classDirExtension methodProperties classMethodsMap instanceMethodMap |
	classDirExtension _ isClassExtension
		ifTrue: [ '.extension' ]
		ifFalse: [ '.class' ].
	classStructures do: [ :classStructure | | classPath instanceMethodPath classMethodPath |
		classPath _ classStructure className , classDirExtension , FileDirectory slash.
		isClassExtension
			ifTrue: [
				self writeExtensionClassStructure: classStructure to: classPath ]
			ifFalse: [
				self writeClassStructure: classStructure to: classPath ].
		methodProperties _ Dictionary new.
		instanceMethodPath _ classPath , 'instance' , FileDirectory slash.
		methodProperties at: 'instance' put: (instanceMethodMap _ Dictionary new).
		classStructure instanceMethods do: [ :methodStructure |
			self writeMethodStructure: methodStructure to: instanceMethodPath.
			instanceMethodMap
				at: methodStructure selector asString
				put: methodStructure timeStamp ].
		classMethodPath _ classPath , 'class' , FileDirectory slash.
		methodProperties at: 'class' put: (classMethodsMap _ Dictionary new).
		classStructure classMethods do: [ :methodStructure |
			self writeMethodStructure: methodStructure to: classMethodPath.
			classMethodsMap
				at: methodStructure selector asString
				put: methodStructure timeStamp ].
		self
			writeInDirectoryName: classPath
			fileName: 'methodProperties'
			extension: '.json'
			visit: [ :fileStream | methodProperties writeCypressJsonOn: fileStream forHtml: false indent: 0 ]]