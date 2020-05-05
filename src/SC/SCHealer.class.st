Class {
	#name : #SCHealer,
	#superclass : #SCSceneElement,
	#category : #SC
}

{ #category : #visiting }
SCHealer >> accept: aVisitor [
	aVisitor visitHealer: self
]

{ #category : #initialization }
SCHealer >> defaultLifePoint [
	^ 15
]
