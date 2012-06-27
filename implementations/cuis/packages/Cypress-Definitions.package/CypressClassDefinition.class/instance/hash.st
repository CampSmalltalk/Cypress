comparing
hash
    | hash |
    hash := String stringHash: name initialHash: 0.
    hash := String stringHash: superclassName initialHash: hash.
    hash := String stringHash: (category ifNil: [ '' ]) initialHash: hash.
    instVarNames , classInstVarNames do: [ :vName | hash := String stringHash: vName initialHash: hash ].
    ^ hash