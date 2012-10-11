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
        | line |
        "Method file starts with following four lines: 
                1. a single double-quote 
                2. 'notice: ' + the contents of the copyrightLine property (see above) 
                3. 'category: ' + method category/protocol 
                4. a single double-quote"

        (line := s nextLine) ~= '"' ifTrue:[ self error: 'Malformed method file'. ^nil].
        ((line := s nextLine) startsWith:'notice: ') ifTrue:[ self error: 'Malformed method file - expecing notice on second line'. ^nil].
        ((line := s nextLine) startsWith:'category: ') ifTrue:[ self error: 'Malformed method file - expecing category on third line'. ^nil].
        mthd category: (line copyFrom: 'category: ' size + 1).
        (line := s nextLine) ~= '"' ifTrue:[ self error: 'Malformed method file'. ^nil].
        mthd source: s upToEnd.
    ].
    ^mthd

    "Created: / 18-09-2012 / 10:03:09 / Jan Vrany <jan.vrany@fit.cvut.cz>"
