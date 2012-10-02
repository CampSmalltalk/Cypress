"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: converting
"
asChangeSet
    | cs |

    cs := ChangeSet new.
    self changesInto: cs.
    ^cs.

    "Created: / 18-09-2012 / 10:16:50 / Jan Vrany <jan.vrany@fit.cvut.cz>"
