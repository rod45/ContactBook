Class {
	#name : #ContactTest,
	#superclass : #TestCase,
	#category : #ContactBook
}

{ #category : #tests }
ContactTest >> testCreation [
	| contact |
contact := Contact newNamed: 'Marcus Denker' email:
'marcus.denker@inria.fr'.
self assert: contact fullname = 'Marcus Denker'.
self assert: contact email = 'marcus.denker@inria.fr'.
]
