"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: converting
"
asChange
    "superclass CypressModel says that I am responsible to implement this method"


    ^ClassDefinitionChange new
        className: self fullClassName;
        superClassName: self fullSuperName;
        category: self category;

        instanceVariableNames: self instVarsAsString;
        classVariableNames: self classVarsAsString;
        classInstanceVariableNames: self classInstVarsAsString;
        poolDictionaries: self poolsAsString;

        yourself.

    "Modified: / 18-09-2012 / 11:17:15 / Jan Vrany <jan.vrany@fit.cvut.cz>"
