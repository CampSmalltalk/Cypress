"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: reading-private
"
readClass: name from: directory
    | clsdir cls |

    clsdir := directory / name.
    clsdir exists ifFalse:[
        clsdir := clsdir withSuffix: self defaultFileSuffixForClass.
    ].
    clsdir exists ifFalse:[
        self error: 'No such class in ', directory pathName.
        ^nil.
    ].

    cls := CypressClass new.
    self 
        readPropertiesFor: cls from: clsdir;
        readMethodsFor: cls from: clsdir.
    ^cls

    "Created: / 18-09-2012 / 09:54:18 / Jan Vrany <jan.vrany@fit.cvut.cz>"
