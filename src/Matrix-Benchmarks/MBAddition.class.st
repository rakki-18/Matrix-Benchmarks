"
I benchmark the operation, ""Addition of two random matrices"".


Public API and Key Messages

To run the benchmarks
- `MBAddition runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBAddition runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 300 and shows a line chart plot.
- `MBAddition runAllBenchmarksFrom: fromMatrixSize to: toMatrixSize by: aNumber` runs the benchmarks for the set of matrix sizes specified.

"
Class {
	#name : #MBAddition,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #accessing }
MBAddition class >> friendlyName [ 


	^ 'Matrix Addition'
]

{ #category : #accessing }
MBAddition class >> title [


	^ 'Addition '
]

{ #category : #benchmarks }
MBAddition >> addAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setuptwoAIColumnMatrix>

	self initRepetitions timesRepeat:[  a1 + a2 ].
]

{ #category : #diagonal }
MBAddition >> addAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setuptwoAIDiagonalMatrix>

	self initRepetitions timesRepeat:[  a1 + a2 ].
]

{ #category : #normal }
MBAddition >> addAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setuptwoAIRowMatrix>

	self initRepetitions timesRepeat:[  a1 + a2 ].
]

{ #category : #symmetric }
MBAddition >> addAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setuptwoAISymetricMatrix>

	self initRepetitions timesRepeat:[  a1 + a2 ].
]

{ #category : #normal }
MBAddition >> addArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setuptwoArray2D>

	self initRepetitions timesRepeat:[  a1 + a2 ].
]

{ #category : #normal }
MBAddition >> addPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setuptwoPMMatrix>

	self initRepetitions timesRepeat:[  a1 + a2 ].
]

{ #category : #symmetric }
MBAddition >> addPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setuptwoPMSymmetricMatrix>

	self initRepetitions timesRepeat:[  a1 + a2 ].
]
