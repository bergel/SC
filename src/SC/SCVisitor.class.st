Class {
	#name : #SCVisitor,
	#superclass : #Object,
	#instVars : [
		'visitedElements'
	],
	#category : #SC
}

{ #category : #initialization }
SCVisitor >> initialize [
	super initialize. 
	visitedElements := OrderedCollection new
]

{ #category : #'as yet unclassified' }
SCVisitor >> numberOfVisitedElements [
	^ visitedElements size
]

{ #category : #visiting }
SCVisitor >> visitBase: aBase [
	visitedElements add: aBase
]

{ #category : #visiting }
SCVisitor >> visitFighter: aFighter [
	visitedElements add: aFighter
]

{ #category : #visiting }
SCVisitor >> visitHealer: aHealer [
	visitedElements add: aHealer
]

{ #category : #visiting }
SCVisitor >> visitMap: aMap [
	aMap elements do: [ :e | e accept: self ]
]

{ #category : #'as yet unclassified' }
SCVisitor >> visitedElements [
	^ visitedElements
]
