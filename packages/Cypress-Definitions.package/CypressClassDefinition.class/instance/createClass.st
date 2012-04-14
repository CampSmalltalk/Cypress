loading
createClass
    | superClass |
    superClass := Smalltalk globals at: self superclassName.
    ^ ClassBuilder new
        name: self name
        inEnvironment: superClass environment
        subclassOf: superClass
        type: #'normal'
        instanceVariableNames: self instanceVariablesString
        classVariableNames: self classInstanceVariablesString
        poolDictionaries: ''
        category: category