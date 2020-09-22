I am a Cat Fact Status, taken from the cat-facts API (https://cat-fact.herokuapp.com)
I represent the status of a Cat Fact

Internal Representation and Key Implementation Points.

Instance Variables
	isVerified: I am a Boolean, representing if I'm a verified Cat Fact
	sentCount:		<Object>

	createdAt: I am a DateAndTime, representing the date I was created
	id:	 I am a ByteString, representing an unique ID for the Fact
	isDeleted: I am a Boolean, representing whether or not I have been deleted (Soft deletes are used)
	isUsed: I am a Boolean, representing whether or not I have been sent by the CatBot. This value is reset each time every I am used
	source: I am a ByteString, representing who added me to the DB. Can be 'user' or 'api'.
	status: I am a CatFactStatus 
	text:	I am a ByteString 
	type: I am a ByteString 
	updatedAt: I am a DateAndTime 
	user: I am a ByteString 
	version: I am an Integer
	
	Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, "I represent a paragraph of text".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	isVerified:		<Object>
	sentCount:		<Object>


    Implementation Points