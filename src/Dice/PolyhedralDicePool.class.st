Class {
	#name : 'PolyhedralDicePool',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'arithmetic' }
PolyhedralDicePool >> + somePolyhedralDice [ 

	| combinedDice |
	combinedDice := PolyhedralDicePool new.
	self dice do: [ :die | combinedDice addDie: die ].
	somePolyhedralDice dice do: [ :die | combinedDice addDie: die ].
	^ combinedDice
]

{ #category : 'accessing' }
PolyhedralDicePool >> addDie: aDie [
	"Add a die to the pool of dice"

	dice add: aDie
]

{ #category : 'accessing' }
PolyhedralDicePool >> dice [
	^ dice
]

{ #category : 'accessing' }
PolyhedralDicePool >> diceCount [
	"comment stating purpose of message"
	^ dice size
]

{ #category : 'initialization' }
PolyhedralDicePool >> initialize [

	dice := OrderedCollection new.
]

{ #category : 'accessing' }
PolyhedralDicePool >> roll [
	"roll a collection of dice and sum them"

	| sum |
	sum := 0.
	dice do: [:polyhedralDie | sum := sum + polyhedralDie roll].
	^ sum
]
