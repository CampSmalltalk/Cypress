*Cypress-Structure
asCypressPropertyObject
    self associations do: [ :assoc | self at: assoc key put: assoc value asCypressPropertyObject ]