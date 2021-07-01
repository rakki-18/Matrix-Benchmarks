Class {
	#name : #MBMatrixMultiplicationSpace,
	#superclass : #MBMatrixMultiplication,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBMatrixMultiplicationSpace >> matrixmultiplyAIColumnMatrix [

	
	self setuptwoAIColumnMatrix.

	^ self bench:[  a1 *~ a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplicationSpace >> matrixmultiplyAIDiagonalMatrix [ 

	
	self setuptwoAIDiagonalMatrix.

	^ self bench:[  a1 *~ a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplicationSpace >> matrixmultiplyAIRowMatrix [ 

	
	self setuptwoAIRowMatrix.

	^ self bench:[  a1 *~ a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplicationSpace >> matrixmultiplyAISymetricMatrix [  

	
	self setuptwoAISymetricMatrix.

	^ self bench:[  a1 *~ a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplicationSpace >> matrixmultiplyArray2D [ 

	
	self setuptwoArray2D.

	^ self bench:[  a1 +* a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplicationSpace >> matrixmultiplyPMMatrix [

	
	self setuptwoPMMatrix.

	^ self bench:[  a1 * a2 ].
	
]

{ #category : #benchmarks }
MBMatrixMultiplicationSpace >> matrixmultiplyPMSymmetricMatrix [

	
	self setuptwoPMSymmetricMatrix.

	^ self bench:[  a1 * a2 ].
	
]
