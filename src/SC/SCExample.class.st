Class {
	#name : #SCExample,
	#superclass : #Object,
	#category : #SC
}

{ #category : #examples }
SCExample >> example01 [
	<script: 'self new example01'>

	| map g |
	map := SCMap new.
	map addElement: (SCBase new position: 50 @ 50).	
	map addElement: (SCFighter new position: 150 @ 50).
	map addElement: (SCFighter new position: 160 @ 50).
	map addElement: (SCFighter new position: 180 @ 50).
	map addElement: (SCHealer new position: 100 @ 100).
	

	g := SCGame new.
	g map: map.
	g open
]
