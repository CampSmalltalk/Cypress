reading
readPropertiesFile	

	self packageDirectory 
		readOnlyFileNamed: 'properties.json'
		do: [:fileStream |
			properties := MCFileTreeJsonParser parseStream: fileStream ]