Class {
	#name : #MBMultiplicationSpace,
	#superclass : #MBMultiplication,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBMultiplicationSpace >> multiplyAIColumnMatrix [

	
	self setupAIColumnMatrix.
	self setupNumber.

	self bench:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplicationSpace >> multiplyAIDiagonalMatrix [

	
	self setupAIDiagonalMatrix.
	self setupNumber.

	self bench:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplicationSpace >> multiplyAIRowMatrix [ 

	
	self setupAIRowMatrix .
	self setupNumber.

	self bench:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplicationSpace >> multiplyAISymetricMatrix [ 

	
	self setupAISymetricMatrix .
	self setupNumber.

	self bench:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplicationSpace >> multiplyArray2D [

	
	self setupArray2D.
	self setupNumber.

	self bench:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplicationSpace >> multiplyPMMatrix [

	
	self setupPMMatrix.
	self setupNumber.

	self bench:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplicationSpace >> multiplyPMSymmetricMatrix [ 

	
	self setupPMSymmetricMatrix.
	self setupNumber.

	self bench:[  a1 * aNumber ].
	
]
