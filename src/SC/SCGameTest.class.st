Class {
	#name : #SCGameTest,
	#superclass : #TestCase,
	#instVars : [
		'map',
		'game'
	],
	#category : #SC
}

{ #category : #running }
SCGameTest >> setUp [
	super setUp.
	map := SCMap new.
	map addElement: (SCBase new position: 50 @ 50).	
	map addElement: (SCFighter new position: 150 @ 50).
	map addElement: (SCFighter new position: 160 @ 50).
	map addElement: (SCFighter new position: 180 @ 50).
	map addElement: (SCHealer new position: 100 @ 100).
	game := SCGame new.
	game map: map
]

{ #category : #tests }
SCGameTest >> testCounting [
	| v |
	v := SCVisitor new.
	map accept: v.
	self assert: v numberOfVisitedElements equals: 5
]

{ #category : #tests }
SCGameTest >> testOpen [
	game open delete
]

{ #category : #tests }
SCGameTest >> testRendering [
	| v |
	v := SCRendering new.
	v game: game.
	map accept: v.
	self assert: v numberOfVisitedElements equals: 5.
	
	
]

{ #category : #tests }
SCGameTest >> testSelection [
	self assert: game selectedElements isEmpty.
	
	game clickOn: (map elements second position).
	self assert: game selectedShapes size equals: 3.
]
