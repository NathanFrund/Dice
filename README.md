# Dice DSL for (Pharo) Smalltalk

A DSL for dice rolling that is based on the [one by 
Stéphane Ducasse.](https://github.com/Ducasse/Dice)

## Installation  

``` smalltalk
Metacello new	baseline: 'Dice';
  repository: 'github://NathanFrund/Dice:main/src';
  load
```
## Directly supported die types:

* D4
* D6
* D8
* D10
* D12
* D20
* Fudge

## DSL usage

Roll a pool of two six-sided dice.
``` smalltalk
    2 D6 roll.
```

Roll and sum.
``` smalltalk
    2 D6 roll sum.
```

Roll and get an OrderedCollection of the dice rolled.
``` smalltalk
    2 D6 roll dice.
```

Fudge dice are handled exactly like any other polyhedral die type.
``` smalltalk
    fudgeDice := 4 DF.
    fudgeDice roll sum.
```

## Custom polyhedrals and manual usage
``` smalltalk
    dice := DicePool new.

    d16 := PolyhedralDie new sides: 16.
    d18 := PolyhedralDie new sides: 18.

    dice addDie: d16; addDie: d18.

    dice roll sum.
```

## A note on Fudge dice.

They report that they are six-sided and roll within the range of -1, 0, 1.
