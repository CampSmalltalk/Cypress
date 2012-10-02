"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: writing-private
"
writeMethod: cmethod to: directory

    self writeMethod: cmethod 
                 as: (self defaultFileNameForMethodNamed:cmethod selector)
                 to: directory

    "Created: / 17-09-2012 / 18:40:56 / Jan Vrany <jan.vrany@fit.cvut.cz>"
