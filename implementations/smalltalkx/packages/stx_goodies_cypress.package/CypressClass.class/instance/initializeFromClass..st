"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: initialization
"
initializeFromClass: aClass
    name := aClass name.
    properties := Dictionary new.

    properties 
        at:'name'           put: aClass nameWithoutPrefix;
        at:'super'          put: aClass superclass nameWithoutPrefix;
        at:'namespace'      put: aClass nameSpace nameWithoutPrefix;
        at:'superNamespace' put: aClass nameSpace nameSpace name;

        at:'instvars'       put: aClass instVarNames;
        at:'classinstvars'  put: aClass class instVarNames;
        at:'classvars'      put: aClass classVarNames;
        at:'pools'          put: aClass sharedPoolNames;

        at:'category'       put: aClass category.


    aClass definitionSelector ~~ Object definitionSelector ifTrue:[
        properties
        at:'_stx_type'      put: aClass definitionSelector
    ].
    methods := OrderedCollection new.
    (Smalltalk at: name asSymbol) instAndClassMethodsDo:[:mthd|
        methods add: (CypressMethod fromMethod: mthd)
    ]

    "Created: / 10-09-2012 / 23:48:42 / Jan Vrany <jan.vrany@fit.cvut.cz>"
