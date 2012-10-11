"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: *Cypress-Structure
"
asCypressPropertyObject
    self associations do: [ :assoc | self at: assoc key put: assoc value asCypressPropertyObject ]
