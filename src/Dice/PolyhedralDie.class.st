Class {
	#name : 'PolyhedralDie',
	#superclass : 'Object',
	#instVars : [
		'sides'
	],
	#category : 'Dice',
	#package : 'Dice'
}

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
