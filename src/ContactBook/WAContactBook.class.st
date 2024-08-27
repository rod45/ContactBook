Class {
	#name : #WAContactBook,
	#superclass : #WAComponent,
	#instVars : [
		'contactBook'
	],
	#category : #ContactBook
}

{ #category : #initialization }
WAContactBook class >> initialize [
	WAAdmin register: self asApplicationAt: 'contacts'.
	
"WAContactBook initialize"
]

{ #category : #accessing }
WAContactBook >> contactBook [
	 ^ contactBook ifNil: [ contactBook := ContactBook createDefault ]
]

{ #category : #accessing }
WAContactBook >> contacts [
	 ^ self contactBook contacts 
]

{ #category : #accessing }
WAContactBook >> contactsDo: aBlock [
	 self contacts do: aBlock
]

{ #category : #accessing }
WAContactBook >> renderContact: aContact on: html [
	 html tableRow: [
			html
			tableData: aContact fullname;
			tableData: aContact email ]
]

{ #category : #accessing }
WAContactBook >> renderContactsOn: html [
	 html table: [
		html tableHead: [
		html
		tableHeading: 'Name';
		tableHeading: 'Email' ].
   self contactsDo: [ :contact | self renderContact: contact on:
		html]  ] 
]

{ #category : #accessing }
WAContactBook >> renderContentOn: html [
	 "Main entry point of the view. Render both a title and the list
    of contacts."
		html heading
		level: 1;
		with: 'My Contact Book'.
		self renderContactsOn: html 
]

{ #category : #accessing }
WAContactBook >> updateRoot: anHtmlRoot [
	 super updateRoot: anHtmlRoot.
	anHtmlRoot title: 'Contact Book'
]
