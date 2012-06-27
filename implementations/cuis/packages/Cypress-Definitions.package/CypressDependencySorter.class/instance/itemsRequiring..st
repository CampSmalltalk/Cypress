private
itemsRequiring: globalName
	^ self required at: globalName ifAbsentPut: [Set new]
