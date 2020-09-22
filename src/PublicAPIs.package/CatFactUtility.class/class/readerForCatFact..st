NeoJSONReaders
readerForCatFact: aNeoJSONReader
	"Returns a NeoJSONReader mapping"

	self readerForCatFactStatus: aNeoJSONReader.
	self readerForDateAndTime: aNeoJSONReader.
		^ aNeoJSONReader
		for: CatFact
		do: [ :mapping | 
			mapping mapInstVars: #(source text type user).
			(mapping mapInstVar: #createdAt) valueSchema: DateAndTime.
			mapping mapInstVar: #id to: '_id'.
			mapping mapInstVar: #isDeleted to: 'deleted'.
			(mapping mapInstVar: #status) valueSchema: CatFactStatus.
			(mapping mapInstVar: #updatedAt) valueSchema: DateAndTime.
			mapping mapInstVar: #isUsed to: 'used'.
			mapping mapInstVar: #version to: '__v' ]