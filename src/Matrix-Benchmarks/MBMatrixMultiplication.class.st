Class {
	#name : #MBMatrixMultiplication,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBMatrixMultiplication class >> title [


	^ 'Matrix Multiplication'
]

{ #category : #parameters }
MBMatrixMultiplication >> initRepetitions [ 

	^ 10
]

{ #category : #benchmarks }
MBMatrixMultiplication >> matrixmultiplyAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setuptwoAIColumnMatrix>

	10 timesRepeat:[  a1 *~ a2 ].
	
]

{ #category : #diagonal }
MBMatrixMultiplication >> matrixmultiplyAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setuptwoAIDiagonalMatrix>

	10 timesRepeat:[  a1 *~ a2 ].
	
]

{ #category : #normal }
MBMatrixMultiplication >> matrixmultiplyAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setuptwoAIRowMatrix>

	10 timesRepeat:[  a1 *~ a2 ].
	
]

{ #category : #symmetric }
MBMatrixMultiplication >> matrixmultiplyAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setuptwoAISymetricMatrix>

	10 timesRepeat:[  a1 *~ a2 ].
	
]

{ #category : #normal }
MBMatrixMultiplication >> matrixmultiplyArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setuptwoArray2D>

	10 timesRepeat:[  a1 +* a2 ].
	
]

{ #category : #normal }
MBMatrixMultiplication >> matrixmultiplyPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setuptwoPMMatrix>

	10 timesRepeat:[  a1 * a2 ].
	
]

{ #category : #symmetric }
MBMatrixMultiplication >> matrixmultiplyPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setuptwoPMSymmetricMatrix>

	10 timesRepeat:[  a1 * a2 ].
	
]
