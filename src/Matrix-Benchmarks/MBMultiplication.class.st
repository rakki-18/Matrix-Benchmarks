"
I benchmark the operation, ""Multiplication of a matrix with a Number"".


Public API and Key Messages

To run the benchmarks
- `MBMultiplication runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBMultiplication  runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 300 and shows a line chart plot.
- `MBMultiplication runAllBenchmarksFrom: fromMatrixSize to: toMatrixSize by: aNumber` runs the benchmarks for the set of matrix sizes specified if it is valid.




"
Class {
	#name : #MBMultiplication,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #accessing }
MBMultiplication class >> friendlyName [ 


	^ 'Scalar multiplication of a matrix with a number'
]

{ #category : #accessing }
MBMultiplication class >> title [


	^ 'Scalar multiplication '
]

{ #category : #benchmarks }
MBMultiplication >> multiplyAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #( #setupAIColumnMatrix #setupNumber)>

	self initRepetitions timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #diagonal }
MBMultiplication >> multiplyAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #( #setupAIDiagonalMatrix #setupNumber)>

	self initRepetitions timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #normal }
MBMultiplication >> multiplyAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #( #setupAIRowMatrix #setupNumber)>

	self initRepetitions timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #symmetric }
MBMultiplication >> multiplyAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #( #setupAISymetricMatrix #setupNumber)>

	self initRepetitions timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #normal }
MBMultiplication >> multiplyArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #( #setupArray2D #setupNumber)>

	self initRepetitions timesRepeat:[  a1 * aNumber ].
]

{ #category : #normal }
MBMultiplication >> multiplyPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #( #setupPMMatrix #setupNumber)>

	self initRepetitions timesRepeat:[  a1 * aNumber ].
]

{ #category : #symmetric }
MBMultiplication >> multiplyPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #( #setupPMSymmetricMatrix #setupNumber)>

	self initRepetitions timesRepeat:[  a1 * aNumber ].
]
