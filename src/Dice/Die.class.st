"
The Die class is the base class for representing individual dice used in games.

If instantiated directly, the Die class takes on the form of a standard 6-sided die.
"
Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'sides',
		'value'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'initialization' }
Die >> initialize [
	sides := 6.
	value := 0
]

{ #category : 'action' }
Die >> roll [

	value := sides atRandom.
	^ self
]

{ #category : 'accessing' }
Die >> sides [
	^ sides
]

{ #category : 'evaluating' }
Die >> value [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	^ value 
]
