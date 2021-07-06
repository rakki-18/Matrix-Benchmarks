"
I benchmark the operation, ""Element-wise multiplication of two matrices"".


Public API and Key Messages

To run the benchmarks
- `MBElementWiseMultiplication runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBElementWiseMultiplication runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 300 and shows a line chart plot.

"
Class {
	#name : #MBElementWiseMultiplication,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBElementWiseMultiplication class >> title [


	^ ' Element-wise Matrix multiplication'
]

{ #category : #benchmarks }
MBElementWiseMultiplication >> elementWiseMultiplyAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setuptwoAIColumnMatrix>

	self initRepetitions timesRepeat:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #diagonal }
MBElementWiseMultiplication >> elementWiseMultiplyAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setuptwoAIDiagonalMatrix>

	self initRepetitions timesRepeat:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #normal }
MBElementWiseMultiplication >> elementWiseMultiplyAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setuptwoAIRowMatrix>

	self initRepetitions timesRepeat:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #symmetric }
MBElementWiseMultiplication >> elementWiseMultiplyAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setuptwoAISymetricMatrix>

	self initRepetitions timesRepeat:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #normal }
MBElementWiseMultiplication >> elementWiseMultiplyArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setuptwoArray2D>

	self initRepetitions timesRepeat:[  a1 * a2 ].
	
]

{ #category : #normal }
MBElementWiseMultiplication >> elementWiseMultiplyPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setuptwoPMMatrix>

	self initRepetitions timesRepeat:[  a1 hadamardProduct: a2 ].
	
]

{ #category : #symmetric }
MBElementWiseMultiplication >> elementWiseMultiplyPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setuptwoPMSymmetricMatrix>

	self initRepetitions timesRepeat:[  a1 hadamardProduct: a2 ].
	
]
