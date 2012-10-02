"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: writing-private
"
writeClass: cclass to: directory

    self writeClass: cclass 
                 as: (self defaultFileNameForClassNamed:cclass name)
                 to: directory

    "Created: / 17-09-2012 / 18:40:53 / Jan Vrany <jan.vrany@fit.cvut.cz>"
