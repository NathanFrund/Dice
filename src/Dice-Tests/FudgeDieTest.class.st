Class {
	#name : 'FudgeDieTest',
	#superclass : 'TestCase',
	#category : 'Dice-Tests',
	#package : 'Dice-Tests'
}

{ #category : 'tests' }
FudgeDieTest >> testRolling [
	"comment stating purpose of message"
	| d |
	d := FudgeDie new.
   10 timesRepeat: [ self assert: (d roll value between: -1 and: 1) ]
]
