Class {
	#name : #SCFighter,
	#superclass : #SCSceneElement,
	#category : #SC
}

{ #category : #visiting }
SCFighter >> accept: aVisitor [
	aVisitor visitFighter: self
]

{ #category : #initialization }
SCFighter >> defaultLifePoint [
	^ 30
]
