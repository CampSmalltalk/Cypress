loading
unloadDefinition

	| cls |
	cls := self actualClass.
	cls removeCompiledMethod: (cls methodAt: self selector)
