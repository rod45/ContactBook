"
I represent a list of Contac
 
Internal Representation and Key Implementation Points.

    Instance Variables
	contacts:		anOrderedCollection of contact



"
Class {
	#name : #ContactBook,
	#superclass : #Object,
	#instVars : [
		'contacts'
	],
	#category : #ContactBook
}

{ #category : #'default instance' }
ContactBook class >> createDefault [
	"create a default contact"
			
	^ self new
       addContact: (Contact
                    newNamed: 'Damien Cassou'
                    email: 'damien@cassou.me');
       addContact: (Contact
                    newNamed: 'Marcus Denker'
                    email: 'marcus.denker@inria.fr');
       addContact: (Contact
                    newNamed: 'Tudor Girba'
                    email: 'tudor@tudorgirba.com');
      addContact: (Contact
                   newNamed: 'Clara Allende'
                   email: 'clari.allende@gmail.com');
      yourself
]

{ #category : #accessing }
ContactBook >> addContact: aContact [
	self contacts add: aContact 
]

{ #category : #accessing }
ContactBook >> contacts [
	^ contacts ifNil: [  contacts := OrderedCollection new ]
]

{ #category : #accessing }
ContactBook >> removeContact: aContact [
	self contacts remove: aContact 
]
