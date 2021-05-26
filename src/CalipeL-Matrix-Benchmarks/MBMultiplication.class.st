Class {
	#name : #MBMultiplication,
	#superclass : #Object,
	#instVars : [
		'a1',
		'aNumber'
	],
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBMultiplication >> multiplyAIMatrix [

	
	<benchmark: 'AIMatrix multiplication'>
	<setup: #setupAIMatrix>

	100 timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplication >> multiplyArray2D [

	
	<benchmark: 'Array2D multiplication'>
	<setup: #setupArray2D>

	100 timesRepeat:[  a1 * aNumber ].
]

{ #category : #benchmarks }
MBMultiplication >> multiplyPMMatrix [

	
	<benchmark: 'PMMatrix multiplication'>
	<setup: #setupPMMatrix>

	100 timesRepeat:[  a1 * aNumber ].
]

{ #category : #setup }
MBMultiplication >> setupAIMatrix [

	aNumber := (10000 random).
	a1 := AIMatrix new: 500.

	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	
]

{ #category : #setup }
MBMultiplication >> setupArray2D [

	aNumber := (10000 random).
	a1 := Array2D new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
]

{ #category : #setup }
MBMultiplication >> setupPMMatrix [


	aNumber := (10000 random).
	a1 := PMMatrix new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
]

{ #category : #setup }
MBMultiplication >> setupaNumber [


	aNumber := (10000 random).
	
]
