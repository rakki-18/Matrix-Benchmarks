Class {
	#name : #MBAccessSpace,
	#superclass : #MBAccess,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBAccessSpace >> accessAIColumnMatrix [ 

	
	self setupAIColumnMatrix.

	^ self bench:[  a1 at: matrixSize  and: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessAIDiagonalMatrix [ 

	
	self setupAIDiagonalMatrix.

	^ self bench:[  a1 at: matrixSize  and: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessAIRowMatrix [ 

	
	self setupAIRowMatrix.

	^ self bench:[  a1 at: matrixSize  and: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessAISymetricMatrix [ 

	
	self setupAISymetricMatrix.

	^ self bench:[  a1 at: matrixSize  and: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessArray2D [

	
	self setupArray2D.

	^ self bench:[  a1 at: matrixSize  at: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessPMMatrix [

	
	self setupPMMatrix.

	^ self bench:[  a1 at: matrixSize  at: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessPMSymmetricMatrix [ 

	
	self setupPMSymmetricMatrix.

	^ self bench:[  a1 at: matrixSize  at: matrixSize ].
]
