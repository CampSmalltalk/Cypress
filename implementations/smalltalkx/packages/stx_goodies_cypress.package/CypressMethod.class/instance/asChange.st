"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: converting
"
asChange
    "superclass CypressModel says that I am responsible to implement this method"

    ^ MethodDefinitionChange new
        className: self fullClassName;
        category: self category;
        source: self source;
        selector: self name.

    "Modified: / 18-09-2012 / 11:10:31 / Jan Vrany <jan.vrany@fit.cvut.cz>"
