Class {
	#name : #SCShapeFactory,
	#superclass : #SCVisitor,
	#instVars : [
		'createdShape'
	],
	#category : #SC
}

{ #category : #visiting }
SCShapeFactory >> createEllipse: anElement [
	^ RSEllipse new size: anElement extent; model: anElement
]

{ #category : #accessing }
SCShapeFactory >> createdShape [
	^ createdShape
]

{ #category : #visiting }
SCShapeFactory >> visitBase: aBase [
	createdShape := (self createEllipse: aBase) color: Color blue
]

{ #category : #visiting }
SCShapeFactory >> visitFighter: aFighter [
	createdShape := (self createEllipse: aFighter) color: Color black
]

{ #category : #visiting }
SCShapeFactory >> visitHealer: aHealer [
	createdShape := (self createEllipse: aHealer) color: Color lightRed
]
