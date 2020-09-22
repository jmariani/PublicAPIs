I am a Cat Fact, taken from the cat-facts API (https://cat-fact.herokuapp.com)
I depend on NeoJSON and ZnClient.

Public API and Key Messages
I expose 'text'

- Return a random cat fact
CatFact random text

 
Internal Representation and Key Implementation Points.

Instance Variables
	createdAt: I am a DateAndTime, representing the date I was created
	id:	 I am a ByteString, representing an unique ID for the Fact
	isDeleted: I am a Boolean, representing whether or not I have been deleted (Soft deletes are used)
	isUsed: I am a Boolean, representing whether or not I have been sent by the CatBot. This value is reset each time every I am used
	source: I am a ByteString, representing who added me to the DB. Can be 'user' or 'api'.
	status: I am a CatFactStatus, representing my status. 
	text:	I am a ByteString, representing my text.
	type: I am a ByteString, representing my type of animal ('cat'). 
	updatedAt: I am a DateAndTime, representing the date I was last updated.
	user: I am a ByteString, representing the Id of the user who added me.
	version: I am an Integer, representing my current version.