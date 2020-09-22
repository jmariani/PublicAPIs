NeoJSONReaders
readerForCatFactStatus: aNeoJSONReader
	"Returns a mapping for NeoJSONReader"

	^ aNeoJSONReader
		for: CatFactStatus
		do: [ :mapping | 
			mapping mapInstVar: #sentCount.
			mapping mapInstVar: #isVerified to: 'verified' ]