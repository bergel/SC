Class {
	#name : #SCBase,
	#superclass : #SCSceneElement,
	#category : #SC
}

{ #category : #visiting }
SCBase >> accept: aVisitor [
	aVisitor visitBase: self
]

{ #category : #initialization }
SCBase >> defaultLifePoint [
	^ 400
]

{ #category : #accessing }
SCBase >> extent [
	^ 50 @ 50
]
