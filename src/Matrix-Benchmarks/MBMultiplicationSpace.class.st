Class {
	#name : #MBMultiplicationSpace,
	#superclass : #MBMultiplication,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBMultiplicationSpace >> multiplyAIColumnMatrix [

	<name: 'AIColumn'>
	self setupAIColumnMatrix.
	self setupNumber.

	^ self bench:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplicationSpace >> multiplyAIDiagonalMatrix [

	<name: 'AIDiagonal'>
	self setupAIDiagonalMatrix.
	self setupNumber.

	^ self bench:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplicationSpace >> multiplyAIRowMatrix [ 

	<name: 'AIRow'>
	self setupAIRowMatrix .
	self setupNumber.

	^ self bench:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplicationSpace >> multiplyAISymetricMatrix [ 

	<name: 'AISymetric'>
	self setupAISymetricMatrix .
	self setupNumber.

	^ self bench:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplicationSpace >> multiplyArray2D [

	<name: 'Array2D'>
	self setupArray2D.
	self setupNumber.

	^ self bench:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplicationSpace >> multiplyPMMatrix [

	<name: 'PMMatrix'>
	self setupPMMatrix.
	self setupNumber.

	^ self bench:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplicationSpace >> multiplyPMSymmetricMatrix [ 

	<name: 'PMSymmetric'>
	self setupPMSymmetricMatrix.
	self setupNumber.

	^ self bench:[  a1 * aNumber ].
	
]
