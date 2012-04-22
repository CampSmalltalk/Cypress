callbacks
getServerStatus
	^ super getServerStatus, '  with root: ', (FileDirectory default directoryNamed: self amberRootDir) fullName asString