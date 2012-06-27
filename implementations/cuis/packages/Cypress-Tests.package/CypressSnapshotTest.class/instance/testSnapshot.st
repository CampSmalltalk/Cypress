testing
testSnapshot
	| name pkg  |
	name := 'Cypress-Mocks'.
	pkg := CypressPackageDefinition new name: name.
	self validatePackage: pkg against: self baseDefinitions
