initialization
className: aName classIsMeta: isMetaclass selector: aSelector category: aCategory source: aSource timeStamp: aTimeStamp

	className := aName asSymbol.
	classIsMeta := isMetaclass.
	selector := aSelector asSymbol.
	category := aCategory asSymbol.
	source := aSource withLineEndings: String lfString.
	timeStamp := aTimeStamp