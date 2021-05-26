Class {
	#name : #MBAddition,
	#superclass : #Object,
	#instVars : [
		'a1',
		'a2'
	],
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBAddition >> addAIMatrix [

	
	<benchmark: 'AIMatrix addition'>
	<setup: #setupAIMatrix>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #benchmarks }
MBAddition >> addArray2D [

	
	<benchmark: 'Array 2D addition'>
	<setup: #setupArray2D>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #benchmarks }
MBAddition >> addPMMatrix [

	
	<benchmark: 'PMMatrix addition'>
	<setup: #setupPMMatrix>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #setup }
MBAddition >> setupAIMatrix [


	a1 := AIMatrix new: 500.
	a2 := AIMatrix new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a2 at: i and: j put: (10000 random) ] ].
]

{ #category : #setup }
MBAddition >> setupArray2D [


	a1 := Array2D new: 500.
	a2 := Array2D new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a2 at: i at: j put: (10000 random) ] ].
]

{ #category : #setup }
MBAddition >> setupPMMatrix [


	a1 := PMMatrix new: 500.
	a2 := PMMatrix new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a2 at: i at: j put: (10000 random) ] ].
]
