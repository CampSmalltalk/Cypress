"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: instance creation
"
fromPackage: packageId
    "Creates new CypressPackage for given package id"

    ^self fromPackageDefinition: (ProjectDefinition definitionClassForPackage: packageId createIfAbsent: true).

    "Created: / 10-09-2012 / 23:34:07 / Jan Vrany <jan.vrany@fit.cvut.cz>"
