"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: reading
"
readPackage: name as: packageIdOrNil from: directory
    | pkgdir pkg |

    pkgdir := CypressRepository packageDirectoryForPackageName: name in: directory.
    pkgdir isNil ifTrue:[ 
        self error: 'No package named ', name ,' found in ', directory pathName.
    ].

    packageId := packageIdOrNil.

    pkg := CypressPackage new.
    self 
        readPropertiesFor: pkg from: pkgdir;
        readClassesFor: pkg from: pkgdir;
        readExtensionsFor: pkg from: pkgdir.
    ^pkg

    "Created: / 18-09-2012 / 13:16:59 / Jan Vrany <jan.vrany@fit.cvut.cz>"
