baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'NeoJSON'
				with: [ spec repository: 'github://svenvc/NeoJSON:master/repository' ].
			spec
				package: 'PublicAPIs-CatFacts' with: [ spec requires: 'NeoJSON' ].
			spec group: 'CatFacts' with: #('NeoJSON' 'PublicAPIs-CatFacts') ]