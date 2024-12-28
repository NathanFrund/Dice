Class {
	#name : 'PolyhedralDiePoolTest',
	#superclass : 'TestCase',
	#category : 'Dice-Tests',
	#package : 'Dice-Tests'
}

{ #category : 'tests' }
PolyhedralDiePoolTest >> testAddingTwiceTheSameDice [
	"comment stating purpose of message"

	| pool |
	pool := DicePool new.
	pool addDie: (PolyhedralDie withSides: 6).
	self assert: pool diceCount equals: 1.
]

{ #category : 'tests' }
PolyhedralDiePoolTest >> testCreationAdding [
	"comment stating purpose of message"

	| pool |
	pool := DicePool new 
		addDie: (PolyhedralDie withSides: 6);
		addDie: (PolyhedralDie withSides: 10);
		yourself.
	self assert: pool diceCount equals: 2.
]

{ #category : 'tests' }
PolyhedralDiePoolTest >> testRoll [
	"comment stating purpose of message"

	| pool sum |
	pool := DicePool new
		addDie: (PolyhedralDie withSides: 6);
		addDie: (PolyhedralDie withSides: 10);
		yourself.
	sum := pool roll sum.
	self assert: sum < 16
]

{ #category : 'tests' }
PolyhedralDiePoolTest >> testSimplePool [
	self assert: 2 D20 diceCount equals: 2.
]

{ #category : 'tests' }
PolyhedralDiePoolTest >> testSumming [
	"comment stating purpose of message"

	| pool |
	pool := 2 D20 + 3 D10.
	self assert: pool diceCount equals: 5.
]
