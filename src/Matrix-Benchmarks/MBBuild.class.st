"
I benchmark the operation, ""Building a null matrix"".


Public API and Key Messages

To run the benchmarks
- `MBBuild runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBBuild runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 300 and shows a line chart plot.
- `MBBuild runAllBenchmarksFrom: fromMatrixSize to: toMatrixSize by: aNumber` runs the benchmarks for the set of matrix sizes specified.

"
Class {
	#name : #MBBuild,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #accessing }
MBBuild class >> title [


	^ 'Building a NULL '
]

{ #category : #benchmarks }
MBBuild >> buildAIColumnMatrix [

	
	<benchmark: 'AIColumn'>

	self initRepetitions timesRepeat:[  AIColumnMatrix new: matrixSize ].
	
]

{ #category : #diagonal }
MBBuild >> buildAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>

	self initRepetitions timesRepeat:[  AIDiagonalMatrix new: matrixSize ].
	
]

{ #category : #normal }
MBBuild >> buildAIRowMatrix [

	
	<benchmark: 'AIRow'>

	self initRepetitions timesRepeat:[  AIRowMatrix new: matrixSize ].
	
]

{ #category : #symmetric }
MBBuild >> buildAISymetricMatrix [

	
	<benchmark: 'AISymetric'>

	self initRepetitions timesRepeat:[  AISymetricMatrix new: matrixSize ].
	
]

{ #category : #normal }
MBBuild >> buildArray2D [

	
	<benchmark: 'Array2D'>

	self initRepetitions timesRepeat:[  Array2D new: matrixSize ].
	
]

{ #category : #normal }
MBBuild >> buildPMMatrix [

	
	<benchmark: 'PMMatrix'>


	self initRepetitions timesRepeat:[  PMMatrix new: matrixSize ].
]

{ #category : #symmetric }
MBBuild >> buildPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>


	self initRepetitions timesRepeat:[  PMSymmetricMatrix new: matrixSize ].
]
