"
The FudgeDie class represents a customized six-sided die which has an equal number of plus, minus, and blank sides.

"
Class {
	#name : 'FudgeDie',
	#superclass : 'Die',
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'action' }
FudgeDie >> roll [
	"Return a Fudge die whose value is within the range of a physical die."

	value := (-1 to: 1) atRandom.
	^ self
]

{ #category : 'accessing' }
FudgeDie >> sides [

	^ 6
]
