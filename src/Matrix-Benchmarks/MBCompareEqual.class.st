"
I benchmark the operation, ""Comparison of two equal matrices"".


Public API and Key Messages

To run the benchmarks
- `MBCompareEqual runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBCompareEqual  runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 300 and shows a line chart plot.
- `MBCompareEqual runAllBenchmarksFrom: fromMatrixSize to: toMatrixSize by: aNumber` runs the benchmarks for the set of matrix sizes specified.

"
Class {
	#name : #MBCompareEqual,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #accessing }
MBCompareEqual class >> title [


	^ 'Comparing equal '
]

{ #category : #benchmarks }
MBCompareEqual >> compareEqualAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setupAIColumnMatrix>

	self initRepetitions timesRepeat:[  a1 = a1 ].
]

{ #category : #diagonal }
MBCompareEqual >> compareEqualAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setupAIDiagonalMatrix>

	self initRepetitions timesRepeat:[  a1 = a1 ].
]

{ #category : #normal }
MBCompareEqual >> compareEqualAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setupAIRowMatrix>

	self initRepetitions timesRepeat:[  a1 = a1 ].
]

{ #category : #symmetric }
MBCompareEqual >> compareEqualAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setupAISymetricMatrix>

	self initRepetitions timesRepeat:[  a1 = a1 ].
]

{ #category : #normal }
MBCompareEqual >> compareEqualArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setupArray2D>

	self initRepetitions timesRepeat:[  a1 = a1 ].
]

{ #category : #normal }
MBCompareEqual >> compareEqualPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	self initRepetitions timesRepeat:[  a1 = a1 ].
]

{ #category : #symmetric }
MBCompareEqual >> compareEqualPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	self initRepetitions timesRepeat:[  a1 = a1 ].
]

{ #category : #parameters }
MBCompareEqual >> initRepetitions [ 

	^ 100000
]
