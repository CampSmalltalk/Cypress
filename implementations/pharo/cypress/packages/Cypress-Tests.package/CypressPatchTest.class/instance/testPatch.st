testing
testPatch
    | baseSnapshot targetSnapshot patch operations expected |
    baseSnapshot := CypressSnapshot definitions: self baseDefinitions.
    targetSnapshot := CypressSnapshot definitions: self targetDefinitions.
    patch := CypressPatch fromBase: baseSnapshot toTarget: targetSnapshot.
    operations := patch operations.
    self assert: operations size = 4.
    expected := self baseTargetPatch asArray.
    1 to: operations size do: [ :index | 
        | op |
        op := operations at: index.
        self assert: (expected includes: op) ]