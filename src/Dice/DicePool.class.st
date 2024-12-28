"
The DicePool class represents a handful of dice that are rolled together.
"
Class {
	#name : 'DicePool',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'arithmetic' }
DicePool >> + somePolyhedralDice [ 

	| combinedDice |
	combinedDice := self class new.
	self dice do: [ :die | combinedDice addDie: die ].
	somePolyhedralDice dice do: [ :die | combinedDice addDie: die ].
	^ combinedDice
]

{ #category : 'adding' }
DicePool >> addDie: aDie [
	"Add a die to the pool of dice"

	dice add: aDie
]

{ #category : 'accessing' }
DicePool >> dice [
	^ dice
]

{ #category : 'accessing' }
DicePool >> diceCount [
	"comment stating purpose of message"
	^ dice size
]

{ #category : 'initialization' }
DicePool >> initialize [

	dice := OrderedCollection new.
]

{ #category : 'action' }
DicePool >> roll [
	"roll a collection of dice so that each provides a value."
	dice := dice collect: [ :die | die roll ].

	^ self
]

{ #category : 'primitives - plugin' }
DicePool >> sum [	
	
	| sum |
	sum := 0.
	dice do: [:die | sum := sum + (die value)].
	^ sum
]
