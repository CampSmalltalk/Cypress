"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: private
"
changesInto:aChangeSet
    "superclass CypressModel says that I am responsible to implement this method"

    aChangeSet add: self asChange.
    self methods do:[:each|each changesInto: aChangeSet].

    "Modified: / 18-09-2012 / 10:58:09 / Jan Vrany <jan.vrany@fit.cvut.cz>"
