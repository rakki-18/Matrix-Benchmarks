Class {
	#name : #MBCompareEqualSpace,
	#superclass : #MBCompareEqual,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #benchmarks }
MBCompareEqualSpace >> compareEqualAIColumnMatrix [

	<name: 'AIColumn'>
	self setupAIColumnMatrix.

	^ self bench:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqualSpace >> compareEqualAIDiagonalMatrix [ 

	<name: 'AIDiagonal'>
	self setupAIDiagonalMatrix .

	^ self bench:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqualSpace >> compareEqualAIRowMatrix [ 

	<name: 'AIRow'>
	self setupAIRowMatrix.

	^ self bench:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqualSpace >> compareEqualAISymetricMatrix [  

	<name: 'AISymetric'>
	self setupAISymetricMatrix .

	^ self bench:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqualSpace >> compareEqualArray2D [

	<name: 'Array2D'>
	self setupArray2D.

	^ self bench:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqualSpace >> compareEqualPMMatrix [

	<name: 'PMMatrix'>
	self setupPMMatrix.

	^ self bench:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqualSpace >> compareEqualPMSymmetricMatrix [ 

	<name: 'PMSymmetric'>
	self setupPMSymmetricMatrix.

	^ self bench:[  a1 = a1 ].
]
