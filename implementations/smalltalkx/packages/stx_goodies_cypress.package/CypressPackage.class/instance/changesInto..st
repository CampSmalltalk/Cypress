"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: private
"
changesInto:aChangeSet
    "superclass CypressModel says that I am responsible to implement this method"

    self classes do:[:each|each changesInto: aChangeSet].
    self extensions do:[:each|each changesInto: aChangeSet].

    "Modified: / 18-09-2012 / 10:57:53 / Jan Vrany <jan.vrany@fit.cvut.cz>"
