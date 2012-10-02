"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: initialization
"
initializeFromMethod: aMethod
    name := aMethod selector.
    klass := aMethod mclass theNonMetaclass name.
    meta := aMethod mclass isMetaclass.
    category := aMethod category.
    source := aMethod source.

    "Created: / 11-09-2012 / 00:05:31 / Jan Vrany <jan.vrany@fit.cvut.cz>"
