"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: accessing
"
source:aString
    source := aString.
    name := (Parser parseMethodSpecification: source) selector

    "Modified: / 18-09-2012 / 11:09:58 / Jan Vrany <jan.vrany@fit.cvut.cz>"
