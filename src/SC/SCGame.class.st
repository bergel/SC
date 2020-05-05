Class {
	#name : #SCGame,
	#superclass : #Object,
	#instVars : [
		'canvas',
		'map',
		'selectedElements',
		'selectedShapes'
	],
	#category : #SC
}

{ #category : #accessing }
SCGame >> canvas [
	^ canvas
]

{ #category : #accessing }
SCGame >> canvas: c [
	canvas := c
]

{ #category : #actions }
SCGame >> clickOn: aPosition [

	selectedShapes := canvas shapes select: [ :s | (s position - aPosition) abs r <= 30 ].
	selectedShapes isEmpty ifTrue: [ self unselectEverything ].
	
	selectedShapes do: [ :s | s color: Color yellow darker darker ]. 
	canvas signalUpdate. 
]

{ #category : #accessing }
SCGame >> initialize [
	super initialize.
	selectedShapes := OrderedCollection new.
	canvas := RSCanvas new.
	
	canvas when: RSMouseClick do: [ :evt |
		self clickOn: evt position
	].
]

{ #category : #initialization }
SCGame >> map: aMap [
	| v |
	map := aMap.

	v := SCRendering new.
	v game: self.
	map accept: v.
]

{ #category : #'instance creation' }
SCGame >> open [
	^ canvas open
]

{ #category : #accessing }
SCGame >> selectedElements [ 
	^ selectedShapes collect: #model
]

{ #category : #accessing }
SCGame >> selectedShapes [
	^ selectedShapes
]
