"
I benchmark the operation, ""Finding [transpose](https://en.wikipedia.org/wiki/Transpose) of a matrix"".


Public API and Key Messages

To run the benchmarks
- `MBTranspose runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBTranspose runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 300 and shows a line chart plot.

Transpose of a symmetric matrix and a diagoanl matrix is itself. Hence, they can do this operation in no time.

"
Class {
	#name : #MBTranspose,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBTranspose class >> title [


	^ 'Transpose of '
]

{ #category : #benchmarks }
MBTranspose >> transposeAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setupAIColumnMatrix>

	self initRepetitions timesRepeat:[  a1 transposed ].
]

{ #category : #diagonal }
MBTranspose >> transposeAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setupAIDiagonalMatrix>

	self initRepetitions timesRepeat:[  a1 transposed ].
]

{ #category : #normal }
MBTranspose >> transposeAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setupAIRowMatrix>

	self initRepetitions timesRepeat:[  a1 transposed ].
]

{ #category : #symmetric }
MBTranspose >> transposeAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setupAISymetricMatrix>

	self initRepetitions timesRepeat:[  a1 transposed ].
]

{ #category : #normal }
MBTranspose >> transposeArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setupArray2D>

	self initRepetitions timesRepeat:[  a1 transposed ].
]

{ #category : #normal }
MBTranspose >> transposePMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	self initRepetitions timesRepeat:[  a1 transpose ].
]

{ #category : #symmetric }
MBTranspose >> transposePMSymmetricMatrix [

	
	<benchmark: 'PMSymmetricMatrix'>
	<setup: #setupPMSymmetricMatrix>

	self initRepetitions timesRepeat:[  a1 transpose ].
]
