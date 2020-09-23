options
mapper: aNeoJSONReader
	"Returns a NeoJSONReader mapping"

	CatFactUtility readerForCatFactStatus: aNeoJSONReader.
	CatFactUtility readerForDateAndTime: aNeoJSONReader.
	^ aNeoJSONReader
		for: self
		do: [ :mapping | 
			mapping mapInstVars: #(source text type user).
			(mapping mapInstVar: #createdAt) valueSchema: DateAndTime.
			mapping mapInstVar: #id to: '_id'.
			mapping mapInstVar: #isDeleted to: 'deleted'.
			(mapping mapInstVar: #status) valueSchema: CatFactStatus.
			(mapping mapInstVar: #updatedAt) valueSchema: DateAndTime.
			mapping mapInstVar: #isUsed to: 'used'.
			mapping mapInstVar: #version to: '__v' ]