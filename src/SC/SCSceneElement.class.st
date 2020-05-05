Class {
	#name : #SCSceneElement,
	#superclass : #Object,
	#instVars : [
		'position',
		'lifePoint',
		'extent'
	],
	#category : #SC
}

{ #category : #initialization }
SCSceneElement >> defaultLifePoint [
	self subclassResponsibility
]

{ #category : #accessing }
SCSceneElement >> extent [
	^ 10 @ 10
]

{ #category : #initialization }
SCSceneElement >> initialize [
	super initialize.
	position := 0 @ 0.
	lifePoint := self defaultLifePoint
	
]

{ #category : #accessing }
SCSceneElement >> position [
	^ position
]

{ #category : #accessing }
SCSceneElement >> position: aPositionAsPoint [
	position := aPositionAsPoint
]
