"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: writing-model
"
writePackage: cpackage as: name to: directory

    | pkgdir |

    notice isNil ifTrue:[ notice := cpackage definition legalCopyright ].
    pkgdir := directory / name.
    pkgdir exists ifFalse:[ pkgdir recursiveMakeDirectory ].

    self 
        writeProperties: cpackage properties to: pkgdir;
        writeComment: cpackage comment to: pkgdir;
        writeClasses: cpackage classes to: pkgdir;
        writeExtensions: cpackage extensions to: pkgdir.

    "Created: / 17-09-2012 / 22:17:19 / Jan Vrany <jan.vrany@fit.cvut.cz>"
