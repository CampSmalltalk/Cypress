"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: accessing
"
poolsAsString

    ^String streamContents:[:s|
        (properties at:'pools' ifAbsent:[#()]) 
            do:[:each|s nextPutAll: each]
            separatedBy:[s space]
    ]

    "Created: / 18-09-2012 / 10:53:26 / Jan Vrany <jan.vrany@fit.cvut.cz>"
