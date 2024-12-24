Class {
	#name : 'PolyhedralDiePoolTest',
	#superclass : 'TestCase',
	#category : 'Dice-Tests',
	#package : 'Dice-Tests'
}

{ #category : 'tests' }
PolyhedralDiePoolTest >> testAddingTwiceTheSameDice [
	"comment stating purpose of message"

	| handle |
	handle := PolyhedralDicePool new.
	handle addDie: (PolyhedralDie withSides: 6).
	self assert: handle diceCount equals: 1.
]

{ #category : 'tests' }
PolyhedralDiePoolTest >> testCreationAdding [
	"comment stating purpose of message"

	| handle |
	handle := PolyhedralDicePool new 
		addDie: (PolyhedralDie withSides: 6);
		addDie: (PolyhedralDie withSides: 10);
		yourself.
	self assert: handle diceCount equals: 2.
]

{ #category : 'tests' }
PolyhedralDiePoolTest >> testRoll [
	"comment stating purpose of message"

	| handle sum |
	handle := PolyhedralDicePool new
		addDie: (PolyhedralDie withSides: 6);
		addDie: (PolyhedralDie withSides: 10);
		yourself.
	sum := handle roll.
	self assert: sum < 16
]

{ #category : 'tests' }
PolyhedralDiePoolTest >> testSimplePool [
	self assert: 2 D20 diceCount equals: 2.
]

{ #category : 'tests' }
PolyhedralDiePoolTest >> testSumming [
	"comment stating purpose of message"

	| handle |
	handle := 2 D20 + 3 D10.
	self assert: handle diceCount equals: 5.
]
