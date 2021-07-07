"
I benchmark the operation, ""Subtraction of two random matrices"".


Public API and Key Messages

To run the benchmarks
- `MBSubtraction runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBSubtraction runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 300 and shows a line chart plot.

"
Class {
	#name : #MBSubtraction,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBSubtraction class >> title [


	^ 'Subtraction '
]

{ #category : #benchmarks }
MBSubtraction >> subtractAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setuptwoAIColumnMatrix>

	self initRepetitions timesRepeat:[  a1 - a2 ].
]

{ #category : #diagonal }
MBSubtraction >> subtractAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setuptwoAIDiagonalMatrix>

	self initRepetitions timesRepeat:[  a1 - a2 ].
]

{ #category : #normal }
MBSubtraction >> subtractAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setuptwoAIRowMatrix>

	self initRepetitions timesRepeat:[  a1 - a2 ].
]

{ #category : #symmetric }
MBSubtraction >> subtractAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setuptwoAISymetricMatrix>

	self initRepetitions timesRepeat:[  a1 - a2 ].
]

{ #category : #normal }
MBSubtraction >> subtractArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setuptwoArray2D>

	self initRepetitions timesRepeat:[  a1 - a2 ].
]

{ #category : #normal }
MBSubtraction >> subtractPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setuptwoPMMatrix>

	self initRepetitions timesRepeat:[  a1 - a2 ].
]

{ #category : #symmetric }
MBSubtraction >> subtractPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setuptwoPMSymmetricMatrix>

	self initRepetitions timesRepeat:[  a1 - a2 ].
]
