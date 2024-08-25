Class {
	#name : #ContactBookTest,
	#superclass : #TestCase,
	#category : #ContactBook
}

{ #category : #tests }
ContactBookTest >> testCreation [
	|contactBook|
	
		contactBook := ContactBook new 
							addContact: (Contact newNamed: 'Rodolphe PALL' email: 'rodolphe.pall@yahoo.fr'). 
							
		self assert: contactBook contacts last fullname   equals: 'Rodolphe PALL'. 
		self assert: contactBook contacts last email equals: 'rodolphe.pall@yahoo.fr'					
]

{ #category : #tests }
ContactBookTest >> testRemove [
	|contactBook contact1|
	
		contact1 :=	Contact newNamed: 'Rodolphe PALL' email: 'rodolphe.pall@yahoo.fr'.
		contactBook := ContactBook new 
							addContact: contact1. 
		contactBook removeContact: contact1.					
							
		self assert: contactBook contacts size equals: 0 
							
]

{ #category : #tests }
ContactBookTest >> testRemove2 [
	|contactBook contact1 contact2|
	
		contact1 :=	Contact newNamed: 'Rodolphe PALL' email: 'rodolphe.pall@yahoo.fr'.
		contact2 := Contact newNamed: 'Rodolphe PALL' email: 'rodolphe.pall@gmail.com'.	
		contactBook := ContactBook new 
							addContact: contact1. 
		contactBook removeContact: contact2.					
							
		self assert: contactBook contacts size equals: 1 
							
]
