instance creation
random
	"Returns a random cat fact."


	^ ZnClient new
		url: url;
		enforceHttpSuccess: true;
		accept: ZnMimeType applicationJson;
		contentReader: [ :entity | 
			| reader |
			reader := NeoJSONReader on: entity readStream.
			CatFactUtility readerForCatFact: reader.
			reader mapInstVarsFor: CatFactStatus.
			reader nextAs: self ];
		get