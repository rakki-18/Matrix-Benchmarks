Class {
	#name : #MBDivisionSpace,
	#superclass : #MBDivision,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBDivisionSpace >> divideAIColumnMatrix [

	
	self setupAIColumnMatrix.
	self setupNumber.

	^ self bench:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivisionSpace >> divideAIDiagonalMatrix [ 

	
	self setupAIDiagonalMatrix.
	self setupNumber.

	^ self bench:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivisionSpace >> divideAIRowMatrix [ 

	
	self setupAIRowMatrix.
	self setupNumber.

	^ self bench:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivisionSpace >> divideAISymetricMatrix [ 

	
	self setupAISymetricMatrix.
	self setupNumber.

	^ self bench:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivisionSpace >> divideArray2D [

	
	self setupArray2D.
	self setupNumber.

	^ self bench:[  a1 / aNumber ].
	
]
