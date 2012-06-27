tests
testPackageStructureToJson
    | packageStructure stream string expected x y |
    packageStructure := CypressPackageStructure fromPackage: (CypressPackageDefinition new name: 'Cypress-Mocks').
    stream := WriteStream on: String new.
    packageStructure writeJsonOn: stream.
    string := stream contents withUnixLineEndings.
    expected := self basePackageStructureJson withUnixLineEndings.
    1 to: string size do: [ :i | 
        (i > expected size or: [ (string at: i) ~= (expected at: i) ])
            ifTrue: [ 
                x := string copyFrom: (i - 25 max: 1) to: (i + 25 min: string size).
                y := expected copyFrom: ((i - 25 max: 1) min: expected size) to: (i + 25 min: expected size).
                Array with: x with: y	"halt" ] ].
    self assert: expected = string