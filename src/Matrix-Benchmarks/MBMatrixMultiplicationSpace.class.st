Class {
	#name : #MBMatrixMultiplicationSpace,
	#superclass : #MBMatrixMultiplication,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBMatrixMultiplicationSpace >> matrixmultiplyAIColumnMatrix [

	<name: 'AIColumn'>
	self setuptwoAIColumnMatrix.

	^ self bench:[  a1 *~ a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplicationSpace >> matrixmultiplyAIDiagonalMatrix [ 

	<name: 'AIDiagonal'>
	self setuptwoAIDiagonalMatrix.

	^ self bench:[  a1 *~ a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplicationSpace >> matrixmultiplyAIRowMatrix [ 

	<name: 'AIRow'>
	self setuptwoAIRowMatrix.

	^ self bench:[  a1 *~ a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplicationSpace >> matrixmultiplyAISymetricMatrix [  

	<name: 'AISymetric'>
	self setuptwoAISymetricMatrix.

	^ self bench:[  a1 *~ a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplicationSpace >> matrixmultiplyArray2D [ 

	<name: 'Array2D'>
	self setuptwoArray2D.

	^ self bench:[  a1 +* a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplicationSpace >> matrixmultiplyPMMatrix [

	<name: 'PMMatrix'>
	self setuptwoPMMatrix.

	^ self bench:[  a1 * a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplicationSpace >> matrixmultiplyPMSymmetricMatrix [

	<name: 'PMSymmetric'>
	self setuptwoPMSymmetricMatrix.

	^ self bench:[  a1 * a2 ].
	
]
