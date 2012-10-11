"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: writing
"
writePackage: cpackage to: directory

    self writePackage: cpackage 
                   as: (self defaultFileNameForPackageNamed:cpackage)
                   to: directory

    "Created: / 17-09-2012 / 17:34:49 / Jan Vrany <jan.vrany@fit.cvut.cz>"
