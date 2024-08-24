"
""I represent a contact of  a contact Book"".

I contain the contact informations


   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	email:		<Object>
	fullname:		<Object>


    Implementation Points
"
Class {
	#name : #Contact,
	#superclass : #Object,
	#instVars : [
		'fullname',
		'email'
	],
	#category : #ContactBook
}

{ #category : #'instance creation' }
Contact class >> newNamed: aNameString email: anEmailString [
	"create a new Contact instance with an name and an email "
	^ self new
			fullname: aNameString;
			email: anEmailString;
			yourself
]

{ #category : #accessing }
Contact >> email [

	^ email
]

{ #category : #accessing }
Contact >> email: aString [

	email := aString
]

{ #category : #accessing }
Contact >> fullname [
  ^ fullname
]

{ #category : #accessing }
Contact >> fullname: aString [
  fullname := aString
]

{ #category : #printing }
Contact >> printOn: aStream [
	aStream
		nextPutAll: self fullname;
		nextPutAll: ' <';
		nextPutAll: self email;
		nextPutAll: '>'
]
