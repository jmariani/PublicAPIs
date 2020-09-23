as yet unclassified
request: idOrRandom
	"Accepts a Cat Fact id as paramenter or 'random' to request a random Cat Fact"

	^ ZnClient new
		url: url;
		addPath: factsEndpoint;
		addPath: idOrRandom;
		systemPolicy;
		timeout: 1;
		ifFail: [ :ex | 
			UIManager default
				alert: 'Error requesting a Cat Fact: ' , ex printString title: 'Cat Facts'];
		accept: ZnMimeType applicationJson;
		contentReader: [ :entity | 
			| reader |
			reader := NeoJSONReader on: entity readStream.
			self mapper: reader.
			reader mapInstVarsFor: CatFactStatus.
			reader nextAs: self ];
		get