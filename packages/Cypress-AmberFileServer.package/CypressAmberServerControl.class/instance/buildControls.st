building
buildControls
	| builder content |
	builder := UITheme builder.
	content := (builder newColumn: {
		builder newLabelFor: self getLabel: #getServerStatus getEnabled: nil.
		builder newLabelGroup: {
			'Port'->(builder newTextEntryFor: self getText: #port setText: #port: help: '').
			}.
		(builder newRow: {
			builder newButtonFor: self action: #startServer label: 'Start server' help: ''.
			builder newButtonFor: self action: #stopServer label: 'Stop server' help: ''.
		})
		vResizing: #spaceFill.
	}).
	^ content 
			width: 750;
			height: 120