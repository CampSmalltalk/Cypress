testing
testPatch

	| baseSnapshot targetSnapshot patch operations |
	baseSnapshot := CypressSnapshot definitions: self baseDefinitions.
	targetSnapshot := CypressSnapshot definitions: self targetDefinitions.
	patch := CypressPatch fromBase: baseSnapshot toTarget: targetSnapshot.
	operations := patch operations.
	self assert: operations size = 4.
	self assert: operations = self baseTargetPatch
