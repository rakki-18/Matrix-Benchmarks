Class {
	#name : #MBAccessSpace,
	#superclass : #MBAccess,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBAccessSpace >> accessAIColumnMatrix [ 

	<name: 'AIColumn'>
	self setupAIColumnMatrix.

	^ self bench:[  a1 at: matrixSize  and: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessAIDiagonalMatrix [ 

	<name: 'AIDiagonal'>
	self setupAIDiagonalMatrix.

	^ self bench:[  a1 at: matrixSize  and: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessAIRowMatrix [ 

	<name: 'AIRow'>
	self setupAIRowMatrix.

	^ self bench:[  a1 at: matrixSize  and: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessAISymetricMatrix [ 

	<name: 'AISymetric'>
	self setupAISymetricMatrix.

	^ self bench:[  a1 at: matrixSize  and: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessArray2D [

	<name: 'Array2D'>
	self setupArray2D.

	^ self bench:[  a1 at: matrixSize  at: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessPMMatrix [

	<name: 'PMMatrix'>
	self setupPMMatrix.

	^ self bench:[  a1 at: matrixSize  at: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessPMSymmetricMatrix [ 

	<name: 'PMSymmetric'>
	self setupPMSymmetricMatrix.

	^ self bench:[  a1 at: matrixSize  at: matrixSize ].
]
