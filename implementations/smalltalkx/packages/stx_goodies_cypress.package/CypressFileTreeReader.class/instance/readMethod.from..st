"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: reading-private
"
readMethod: name from: directory
    | mthdfile mthd |

    mthdfile := directory / name.
    mthdfile exists ifFalse:[
        mthdfile := mthdfile withSuffix: self defaultFileSuffixForMethod.
    ].
    mthdfile exists ifFalse:[
        self error: 'No such method in ', directory pathName.
        ^nil.
    ].

    mthd := CypressMethod new.
    mthdfile readingFileDo:[:s|
        mthd category: s nextLine.
        mthd source: s upToEnd.
    ].
    ^mthd

    "Created: / 18-09-2012 / 10:03:09 / Jan Vrany <jan.vrany@fit.cvut.cz>"
