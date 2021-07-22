"
I benchmark the operation, ""Division of a matrix with a number"".


Public API and Key Messages

To run the benchmarks
- `MBDivision runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBDivision  runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 300 and shows a line chart plot.

"
Class {
	#name : #MBDivision,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #accessing }
MBDivision class >> title [


	^ 'Division '
]

{ #category : #benchmarks }
MBDivision >> divideAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #( #setupAIColumnMatrix #setupNumber)>

	self initRepetitions timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #diagonal }
MBDivision >> divideAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #( #setupAIDiagonalMatrix #setupNumber)>

	self initRepetitions timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #normal }
MBDivision >> divideAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #( #setupAIRowMatrix #setupNumber)>

	self initRepetitions timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #symmetric }
MBDivision >> divideAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #( #setupAISymetricMatrix #setupNumber)>

	self initRepetitions timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #normal }
MBDivision >> divideArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #( #setupArray2D #setupNumber)>

	self initRepetitions timesRepeat:[  a1 / aNumber ].
]
