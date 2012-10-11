"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: defaults-filenames
"
defaultFileNameForClassExtensionsNamed:classname 
    ^ ((classname copyReplaceAll:$: with:$_) , '.' 
        , self defaultFileSuffixForExtensions).

    "Created: / 17-09-2012 / 18:27:51 / Jan Vrany <jan.vrany@fit.cvut.cz>"
