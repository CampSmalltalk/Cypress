"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: writing-private
"
writeProperties: properties to: directory
    | props propertyFile |

    props := properties copy.
    props isEmptyOrNil ifTrue:[ ^ self ].
    propertyFile := directory / self defaultFileNameForProperties. 

    " add notice "
    props at: '_cypress_copyright' put: notice.

    " be nice and do not discard properties of others. Merge them"
    propertyFile exists ifTrue:[
        | existing |
        existing := CypressJSONReader parse: propertyFile.
        existing keysAndValuesDo:[:key :value|
            (props includesKey: key) ifFalse:[
                props at: key put: value
            ]
        ]
    ].
    props isEmpty ifTrue:[
        propertyFile exist ifTrue:[
            propertyFile remove
        ]
    ] ifFalse:[
        propertyFile writingFileDo:[:s|
            props writeCypressJsonOn: s forHtml: false indent: 0.
        ]
    ].

    "Created: / 17-09-2012 / 17:38:47 / Jan Vrany <jan.vrany@fit.cvut.cz>"
