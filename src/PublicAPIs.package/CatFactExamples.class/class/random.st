instance creation
random
	[ UIManager default
		proceed: (CatFact random text withNoLineLongerThan: 65)
		title: 'A random cat fact. Click OK to get another one or Cancel to exit.' ]
		whileTrue