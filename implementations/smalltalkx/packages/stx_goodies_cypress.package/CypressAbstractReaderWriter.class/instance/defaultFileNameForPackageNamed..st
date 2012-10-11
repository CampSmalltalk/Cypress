"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: defaults-filenames
"
defaultFileNameForPackageNamed:aCypressPackage 
    ^ ((aCypressPackage name copy)
        replaceAll:$: with:$_;
        replaceAll:$/ with:$_;
        yourself) , '.' 
        , self defaultFileSuffixForPackage

    "Created: / 17-09-2012 / 17:32:49 / Jan Vrany <jan.vrany@fit.cvut.cz>"
