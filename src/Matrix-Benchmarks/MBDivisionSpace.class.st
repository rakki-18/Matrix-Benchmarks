Class {
	#name : #MBDivisionSpace,
	#superclass : #MBDivision,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBDivisionSpace >> divideAIColumnMatrix [

	<name: 'AIColumn'>
	self setupAIColumnMatrix.
	self setupNumber.

	^ self bench:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivisionSpace >> divideAIDiagonalMatrix [ 

	<name: 'AIDiagonal'>
	self setupAIDiagonalMatrix.
	self setupNumber.

	^ self bench:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivisionSpace >> divideAIRowMatrix [ 

	<name: 'AIRow'>
	self setupAIRowMatrix.
	self setupNumber.

	^ self bench:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivisionSpace >> divideAISymetricMatrix [ 

	<name: 'AISymetric'>
	self setupAISymetricMatrix.
	self setupNumber.

	^ self bench:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivisionSpace >> divideArray2D [

	<name: 'Array2D'>
	self setupArray2D.
	self setupNumber.

	^ self bench:[  a1 / aNumber ].
	
]
