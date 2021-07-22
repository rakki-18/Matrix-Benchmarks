"
I benchmark the operation, ""Building a matrix with zeros"".


Public API and Key Messages

To run the benchmarks
- `MBBuildZeros runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBBuildZeros  runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 300 and shows a line chart plot.
- `MBBuildZeros runAllBenchmarksFrom: fromMatrixSize to: toMatrixSize by: aNumber` runs the benchmarks for the set of matrix sizes specified.

"
Class {
	#name : #MBBuildZeros,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #accessing }
MBBuildZeros class >> title [


	^ 'Building a zero '
]

{ #category : #benchmarks }
MBBuildZeros >> buildZeroAIColumnMatrix [

	
	<benchmark: 'AIColumn'>

	self initRepetitions timesRepeat:[  AIColumnMatrix new: matrixSize withAll: 0].
	
]

{ #category : #diagonal }
MBBuildZeros >> buildZeroAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>

	self initRepetitions timesRepeat:[  AIDiagonalMatrix new: matrixSize withAll: 0].
	
]

{ #category : #normal }
MBBuildZeros >> buildZeroAIRowMatrix [

	
	<benchmark: 'AIRow'>

	self initRepetitions timesRepeat:[  AIRowMatrix new: matrixSize withAll: 0].
	
]

{ #category : #symmetric }
MBBuildZeros >> buildZeroAISymetricMatrix [

	
	<benchmark: 'AISymetric'>

	self initRepetitions timesRepeat:[  AISymetricMatrix new: matrixSize withAll: 0].
	
]

{ #category : #normal }
MBBuildZeros >> buildZeroArray2D [

	
	<benchmark: 'Array2D'>

	self initRepetitions timesRepeat:[  Array2D zeros: matrixSize ].
	
]

{ #category : #normal }
MBBuildZeros >> buildZeroPMMatrix [

	
	<benchmark: 'PMMatrix'>


	self initRepetitions timesRepeat:[  PMMatrix zerosRows: matrixSize cols: matrixSize].
]

{ #category : #symmetric }
MBBuildZeros >> buildZeroPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetricMatrix'>


	self initRepetitions timesRepeat:[  PMSymmetricMatrix  zerosRows: matrixSize cols: matrixSize].
]
