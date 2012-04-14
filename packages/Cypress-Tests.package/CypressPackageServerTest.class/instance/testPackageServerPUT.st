tests
testPackageServerPUT
	| url packageStructure stream json |
	packageStructure := CypressPackageStructure fromPackage: (CypressPackageDefinition new name: 'Cypress-Mocks').
	stream := StringStream on: String new.
	packageStructure writeJsonOn: stream.
	json := stream contents.
	url := 'tests/scratch/PUT-Cypress-Mocks.json'.
	jQuery 
		ajax: url
		options: {	
			'type' -> 'PUT'.
			'data' -> json.
			'contentType' -> 'text/plain;charset=UTF-8'.
			'complete' -> [ :jqXHR :textStatus | Transcript cr; show: 'PUT request completed:  ', url].
			'error' -> [ Transcript cr; show: 'PUT request failed at:  ', url ] }
