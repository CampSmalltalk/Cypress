accessing
selector: aString

	name := String
		streamContents: [:stream | aString do: [:chara | stream nextPutAll: (chara = ':' ifTrue:  [ '.' ] ifFalse: [ chara ])]]
