NeoJSONReaders
readerForDateAndTime: aNeoJSONReader
	"Returns a custom mapping for NeoJSONReader"
	^ aNeoJSONReader
		for: DateAndTime
		customDo: [ :mapping | 
			mapping decoder: [ :string | DateAndTime fromString: string ].
			mapping encoder: [ :dateAndTime | dateAndTime printString ] ]