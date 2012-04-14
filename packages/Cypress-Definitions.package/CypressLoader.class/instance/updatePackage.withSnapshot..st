loading
updatePackage: aPackage withSnapshot: aSnapshot
	|  patch snapshot |
	snapshot := aPackage snapshot.
	patch := aSnapshot patchRelativeToBase: snapshot.
	patch applyTo: self.
	snapshot definitions do: [:ea | self provisions addAll: ea provisions]
