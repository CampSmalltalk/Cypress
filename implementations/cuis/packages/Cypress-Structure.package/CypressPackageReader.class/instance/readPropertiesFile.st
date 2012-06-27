reading
readPropertiesFile	

	self packageDirectory 
		readOnlyFileNamed: 'properties.json'
		do: [:fileStream |
			properties := CypressJsonParser parseStream: fileStream ]