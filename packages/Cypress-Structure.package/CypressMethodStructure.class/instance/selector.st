accessing
selector

	^String
		streamContents: [:stream | self name do: [:chara | stream nextPutAll: (chara = '.' ifTrue:  [ ':' ] ifFalse: [ chara ])]]
