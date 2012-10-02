"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: defaults-filenames
"
defaultFileNameForComment
    ^ repository properties at:'commentFile' ifAbsent:[ 'README.md' ]

    "Created: / 17-09-2012 / 18:07:25 / Jan Vrany <jan.vrany@fit.cvut.cz>"
