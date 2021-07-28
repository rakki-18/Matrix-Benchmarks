"
I benchmark the operation, ""Accessing a cell in a matrix"".


Public API and Key Messages

To run the benchmarks
- `MBAccess runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBAccess runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 300 and shows a line chart plot.
- `MBAccess runAllBenchmarksFrom: fromMatrixSize to: toMatrixSize by: aNumber` runs the benchmarks for the set of matrix sizes specified.

"
Class {
	#name : #MBAccess,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #accessing }
MBAccess class >> friendlyName [


	^ 'Accessing a cell in a matrix'
]

{ #category : #accessing }
MBAccess class >> title [


	^ 'Accessing a '
]

{ #category : #'as yet unclassified' }
MBAccess >> accessAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setupAIColumnMatrix>

	1000000 timesRepeat:[  a1 at: matrixSize  and: matrixSize ].
]

{ #category : #diagonal }
MBAccess >> accessAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setupAIDiagonalMatrix>

	self initRepetitions  timesRepeat:[  a1 at: matrixSize  and: matrixSize ].
]

{ #category : #normal }
MBAccess >> accessAIRowMatrix [


	<benchmark: 'AIRow'>
	<setup: #setupAIRowMatrix>

	 self initRepetitions timesRepeat: [  a1 at: matrixSize and: matrixSize ].
]

{ #category : #symmetric }
MBAccess >> accessAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setupAISymetricMatrix>

	self initRepetitions timesRepeat:[  a1 at: matrixSize and: matrixSize ].
]

{ #category : #normal }
MBAccess >> accessArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setupArray2D>

	self initRepetitions timesRepeat:[  a1 at: matrixSize at: matrixSize ].
]

{ #category : #normal }
MBAccess >> accessPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	self initRepetitions timesRepeat:[  a1 at: matrixSize at: matrixSize ].
]

{ #category : #symmetric }
MBAccess >> accessPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	self initRepetitions timesRepeat:[  a1 at: matrixSize at: matrixSize ].
]

{ #category : #parameters }
MBAccess >> initRepetitions [ 

	^ 100000
]
