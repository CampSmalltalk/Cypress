"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: queries-features
"
hasCypress
    "Returns true, if Cypress support is loaded"

    ^(Smalltalk at: #CypressReader) notNil

    "
     ConfigurableFeatures hasCypress              
     ConfigurableFeatures includesFeature:#Cypress
    "

    "Created: / 07-09-2012 / 19:16:09 / Jan Vrany <jan.vrany@fit.cvut.cz>"
