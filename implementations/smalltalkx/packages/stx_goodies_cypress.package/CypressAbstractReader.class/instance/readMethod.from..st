"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: reading-private
"
readMethod:arg1 from:arg2
    "raise an error: must be redefined in concrete subclass(es)"

    ^ self subclassResponsibility
