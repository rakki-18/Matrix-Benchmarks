Class {
	#name : #MBTransposeSpace,
	#superclass : #MBTranspose,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBTransposeSpace >> transposeAIColumnMatrix [

	<name: 'AIColumn'>
	self setupAIColumnMatrix.

	^ self bench:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTransposeSpace >> transposeAIDiagonalMatrix [

	<name: 'AIDiagonal'>
	self setupAIDiagonalMatrix .

	^ self bench:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTransposeSpace >> transposeAIRowMatrix [

	<name: 'AIRow'>
	self setupAIRowMatrix.

	^ self bench:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTransposeSpace >> transposeAISymetricMatrix [

	<name: 'AISymetric'>
	self setupAISymetricMatrix .

	^ self bench:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTransposeSpace >> transposeArray2D [

	<name: 'Array2D'>
	self setupArray2D .

	^ self bench:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTransposeSpace >> transposePMMatrix [

	<name: 'PMMatrix'>
	self setupPMMatrix .

	^ self bench:[  a1 transpose ].
]

{ #category : #benchmarks }
MBTransposeSpace >> transposePMSymmetricMatrix [

	<name: 'PMSymmetric'>
	self setupPMSymmetricMatrix .

	^ self bench:[  a1 transpose ].
]
