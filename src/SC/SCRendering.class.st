Class {
	#name : #SCRendering,
	#superclass : #SCVisitor,
	#instVars : [
		'shapeFactory',
		'canvas',
		'game'
	],
	#category : #SC
}

{ #category : #accessing }
SCRendering >> canvas [
	^ game canvas
]

{ #category : #accessing }
SCRendering >> game: aGame [
	game := aGame
]

{ #category : #visiting }
SCRendering >> initialize [
	| selectedShapes |
	super initialize.
	shapeFactory := SCShapeFactory new
]

{ #category : #visiting }
SCRendering >> processElement: anElement [
	| newShape |
	(visitedElements includes: anElement) ifTrue: [ ^ self ].
	
	anElement accept: shapeFactory.
	newShape := shapeFactory createdShape.
	self canvas add: newShape.
	newShape translateTo: anElement position
	
]

{ #category : #visiting }
SCRendering >> visitBase: aBase [
	self processElement: aBase.
	super visitBase: aBase.

]

{ #category : #visiting }
SCRendering >> visitFighter: aFighter [
	self processElement: aFighter.
	super visitFighter: aFighter.
]

{ #category : #visiting }
SCRendering >> visitHealer: aHealer [
	self processElement: aHealer.
	super visitHealer: aHealer.
]
