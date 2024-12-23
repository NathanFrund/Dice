Class {
	#name : 'FudgeDie',
	#superclass : 'Object',
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'action' }
FudgeDie >> roll [
	"Randomly return a value represented by a single fudge die."
	^ (-1 to: 1) atRandom
]
