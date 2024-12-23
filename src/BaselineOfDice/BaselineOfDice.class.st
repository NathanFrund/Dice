Class {
	#name : 'BaselineOfDice',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfDice',
	#package : 'BaselineOfDice'
}

{ #category : 'baselines' }
BaselineOfDice >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec package: 'Dice'
		]
]
