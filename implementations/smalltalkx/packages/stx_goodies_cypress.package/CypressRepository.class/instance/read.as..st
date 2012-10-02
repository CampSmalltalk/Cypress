"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: reading
"
read: packageName as: packageId
    | readerCls |

    readerCls := readerClass.
    readerCls isNil ifTrue:[
        | pdir |

        pdir := self class packageDirectoryForPackageName: packageName in: directory.
        pdir notNil ifTrue:[
            readerCls := (pdir / 'properties.json') exists 
                    ifTrue:[CypressFileTreeReader]
                    ifFalse:[CypressReader].
        ] ifFalse:[
            self error:'No such package found'.
        ].
    ].

    ^(readerCls onRepository: self) readPackage: packageName as: packageId from: directory

    "Created: / 18-09-2012 / 13:15:20 / Jan Vrany <jan.vrany@fit.cvut.cz>"
