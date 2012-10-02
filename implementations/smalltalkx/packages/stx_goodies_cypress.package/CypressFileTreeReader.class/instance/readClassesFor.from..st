"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: reading-private
"
readClassesFor: pkg from: directory

    directory directoryContentsAsFilenamesDo:[:each|
        each suffix = self defaultFileSuffixForClass ifTrue:[
            pkg classes add: (self readClass: each baseName from: directory)
        ]
    ]

    "Created: / 18-09-2012 / 09:52:48 / Jan Vrany <jan.vrany@fit.cvut.cz>"
