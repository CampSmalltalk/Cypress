"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: private
"
packageDirectoryForPackageName: pkgName in: repoDir
    | pkgDir |

    pkgDir := repoDir / pkgName.
    pkgDir exists ifTrue:[ ^ pkgDir ].

    "/Try add .package"
    pkgDir := pkgDir withSuffix: 'package'.
    pkgDir exists ifTrue:[ ^ pkgDir ].

    "/Hmm...maybe stx package name
    pkgDir := repoDir / ((pkgName asString copy replaceAll:$: with:$_; replaceAll:$/ with:$_) , '.package').
    pkgDir exists ifTrue:[ ^ pkgDir ].

    "/ No luck, return nil
    ^nil

    "Created: / 18-09-2012 / 13:33:22 / Jan Vrany <jan.vrany@fit.cvut.cz>"
