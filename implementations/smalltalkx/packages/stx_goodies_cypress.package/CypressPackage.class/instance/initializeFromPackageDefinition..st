"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: initialization
"
initializeFromPackageDefinition: projectDefinition
    definition := projectDefinition.
    name := projectDefinition package asString.
    properties := Dictionary new.

    properties 
        at: '_cypress_copyright' put: (definition legalCopyright);
        at: '_stx_name' put: name.

    classes := definition classes collect:[:cls|CypressClass fromClass: cls].
    extensions := definition extensionMethods collect:[:mthd|CypressMethod fromMethod: mthd].

    "Created: / 10-09-2012 / 23:35:31 / Jan Vrany <jan.vrany@fit.cvut.cz>"
