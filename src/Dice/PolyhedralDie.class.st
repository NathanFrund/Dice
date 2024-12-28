"
The PolyhedralDie class represents the now classic array of multi-faceted dice used in roleplaying games such as Dungeons & Dragons.
"
Class {
	#name : 'PolyhedralDie',
	#superclass : 'Die',
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'as yet unclassified' }
PolyhedralDie class >> withSides: anInteger [ 
	"Create an initialize a new die with anInteger number of faces."
	| instance |
	instance := self new.
	instance sides: anInteger.
	^ instance
]

{ #category : 'accessing' }
PolyhedralDie >> sides: anInteger [

	sides := anInteger
]
