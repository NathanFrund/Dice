Class {
	#name : 'PolyhedralDieTest',
	#superclass : 'TestCase',
	#category : 'Dice-Tests',
	#package : 'Dice-Tests'
}

{ #category : 'tests' }
PolyhedralDieTest >> testCreationIsOk [
	self assert: (PolyhedralDie withSides: 20) sides equals: 20
]

{ #category : 'tests' }
PolyhedralDieTest >> testInitializeIsOk [
	self assert: PolyhedralDie new sides equals: 6
]

{ #category : 'tests' }
PolyhedralDieTest >> testRolling [
	| d |
	d := PolyhedralDie new.
	10 timesRepeat: [ self assert: (d roll between: 1 and: 6) ]
]
