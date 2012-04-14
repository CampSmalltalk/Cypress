accessing
selector

	^String
		streamContents: [:stream | self name do: [:chara | stream nextPut:  (chara = '.' ifTrue:  [ ':' ] ifFalse: [ chara ])]]
