Class {
	#name : #SCMap,
	#superclass : #Object,
	#instVars : [
		'elements'
	],
	#category : #SC
}

{ #category : #initialization }
SCMap >> accept: aVisitor [
	aVisitor visitMap: self
]

{ #category : #initialization }
SCMap >> addElement: anElement [
	elements add: anElement
]

{ #category : #accessing }
SCMap >> elements [
	^ elements
]

{ #category : #initialization }
SCMap >> initialize [
	super initialize.
	elements := OrderedCollection new
]
