"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: accessing
"
classVarsAsString

    ^String streamContents:[:s|
        (properties at:'classvars' ifAbsent:[#()]) 
            do:[:each|s nextPutAll: each]
            separatedBy:[s space]
    ]

    "Created: / 18-09-2012 / 10:51:56 / Jan Vrany <jan.vrany@fit.cvut.cz>"
