Class {
	#name : #MBMatrixMultiplication,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBMatrixMultiplication class >> title [


	^ 'Matrix Multiplication'
]

{ #category : #benchmarks }
MBMatrixMultiplication >> matrixmultiplyAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setuptwoAIColumnMatrix>

	10 timesRepeat:[  a1 *~ a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplication >> matrixmultiplyAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setuptwoAIDiagonalMatrix>

	10 timesRepeat:[  a1 *~ a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplication >> matrixmultiplyAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setuptwoAIRowMatrix>

	10 timesRepeat:[  a1 *~ a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplication >> matrixmultiplyAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setuptwoAISymetricMatrix>

	10 timesRepeat:[  a1 *~ a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplication >> matrixmultiplyArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setuptwoArray2D>

	10 timesRepeat:[  a1 +* a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplication >> matrixmultiplyPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setuptwoPMMatrix>

	10 timesRepeat:[  a1 * a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplication >> matrixmultiplyPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setuptwoPMSymmetricMatrix>

	10 timesRepeat:[  a1 * a2 ].
	
]
