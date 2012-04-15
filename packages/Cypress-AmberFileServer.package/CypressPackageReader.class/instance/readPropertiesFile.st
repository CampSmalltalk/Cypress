reading
readPropertiesFile	

	self packageDirectory 
		readOnlyFileNamed: self name 
		do: [:fileStream |
			properties := MCFileTreeJsonParser parseStream: fileStream ]