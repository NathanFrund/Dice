Extension { #name : 'Integer' }

{ #category : '*Dice' }
Integer >> D10 [
	"Return a number of 10-sided dice related to self"
	| dice |
	dice := PolyhedralDicePool new.
	self timesRepeat: [ dice addDie: (PolyhedralDie new sides: 10) ].
	^ dice
]

{ #category : '*Dice' }
Integer >> D12 [
	"Return a number of 20-sided dice related to self"
	| dice |
	dice := PolyhedralDicePool new.
	self timesRepeat: [ dice addDie: (PolyhedralDie new sides: 12) ].
	^ dice
]

{ #category : '*Dice' }
Integer >> D20 [
	"Return a number of 20-sided dice related to self"
	| dice |
	dice := PolyhedralDicePool new.
	self timesRepeat: [ dice addDie: (PolyhedralDie new sides: 20) ].
	^ dice
]

{ #category : '*Dice' }
Integer >> D4 [
	"Return a number of 4-sided dice related to self"
	| dice |
	dice := PolyhedralDicePool new.
	self timesRepeat: [ dice addDie: (PolyhedralDie new sides: 4) ].
	^ dice
]

{ #category : '*Dice' }
Integer >> D6 [
	"Return a number of 6-sided dice related to self"
	| dice |
	dice := PolyhedralDicePool new.
	self timesRepeat: [ dice addDie: (PolyhedralDie new sides: 6) ].
	^ dice
]

{ #category : '*Dice' }
Integer >> D8 [
	"Return a number of 8-sided dice related to self"
	| dice |
	dice := PolyhedralDicePool new.
	self timesRepeat: [ dice addDie: (PolyhedralDie new sides: 8) ].
	^ dice
]

{ #category : '*Dice' }
Integer >> DF [
	"Return a number of fudge dice related to self"
	| diePool |
	diePool := FudgeDicePool new.
	self timesRepeat: [ diePool add: FudgeDie new ].
	^ diePool
]
