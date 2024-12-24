Class {
	#name : 'PolyhedralDie',
	#superclass : 'Object',
	#instVars : [
		'sides'
	],
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

{ #category : 'initialization' }
PolyhedralDie >> initialize [
	sides := 6
]

{ #category : 'action' }
PolyhedralDie >> roll [ 
	^ sides atRandom 
]

{ #category : 'accessing' }
PolyhedralDie >> sides [

	^ sides
]

{ #category : 'accessing' }
PolyhedralDie >> sides: anInteger [

	sides := anInteger
]
