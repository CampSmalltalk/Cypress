"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: defaults-filenames
"
defaultFileNameForMethodNamed:selector 

    ^ (Dictionary new)
        at:$/ put:'__quo__';
        "/Add more"    
        at: selector
            ifAbsent:[ ((selector copyReplaceAll:$: with:$.) , '.st') ]

    "Created: / 17-09-2012 / 18:22:07 / Jan Vrany <jan.vrany@fit.cvut.cz>"
