Class {
	#name : 'FudgeDicePool',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'adding' }
FudgeDicePool >> add: aDie [
	dice add: aDie
]

{ #category : 'initialization' }
FudgeDicePool >> initialize [

	dice := Bag new.
]

{ #category : 'action' }
FudgeDicePool >> roll [
	"Roll the die pool, sum and return the value"
	| sum |
	sum := 0.
	dice do: [:fudgeDie | sum := sum + fudgeDie roll].
	^ sum
]
