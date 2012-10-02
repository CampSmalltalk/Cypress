"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: writing-model
"
writeClass: cclass as: name to: directory

    | clsdir |

    clsdir := directory / name.
    clsdir exists ifFalse:[ clsdir recursiveMakeDirectory ].

    self 
        writeProperties: cclass properties to: clsdir;
        writeComment: cclass comment to: clsdir;
        writeMethods: cclass methods to: clsdir

    "Created: / 17-09-2012 / 22:18:38 / Jan Vrany <jan.vrany@fit.cvut.cz>"
