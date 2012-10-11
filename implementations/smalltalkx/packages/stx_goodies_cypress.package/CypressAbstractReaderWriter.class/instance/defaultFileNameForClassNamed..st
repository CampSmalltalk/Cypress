"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: defaults-filenames
"
defaultFileNameForClassNamed: name 
    ^ ((name copyReplaceAll:$: with:$_) , '.' 
        , self defaultFileSuffixForClass).

    "Created: / 17-09-2012 / 18:11:39 / Jan Vrany <jan.vrany@fit.cvut.cz>"
