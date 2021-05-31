Class {
	#name : #MBMatrixMultiplication,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBMatrixMultiplication >> matrixmultiplyAIColumnMatrix [

	
	<benchmark: 'AIColumnMatrix matrix multiplication'>
	<setup: #setuptwoAIColumnMatrix>

	10 timesRepeat:[  a1 *~ a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplication >> matrixmultiplyAIRowMatrix [

	
	<benchmark: 'AIRowMatrix matrix multiplication'>
	<setup: #setuptwoAIRowMatrix>

	10 timesRepeat:[  a1 *~ a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplication >> matrixmultiplyAISymetricMatrix [

	
	<benchmark: 'AISymetricMatrix matrix multiplication'>
	<setup: #setuptwoAISymetricMatrix>

	10 timesRepeat:[  a1 *~ a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplication >> matrixmultiplyArray2D [

	
	<benchmark: 'Array2D matrix multiplication'>
	<setup: #setuptwoArray2D>

	10 timesRepeat:[  a1 +* a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplication >> matrixmultiplyPMMatrix [

	
	<benchmark: 'PMMatrix matrix multiplication'>
	<setup: #setuptwoPMMatrix>

	10 timesRepeat:[  a1 * a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplication >> matrixmultiplyPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetricMatrix matrix multiplication'>
	<setup: #setuptwoPMSymmetricMatrix>

	10 timesRepeat:[  a1 * a2 ].
	
]
