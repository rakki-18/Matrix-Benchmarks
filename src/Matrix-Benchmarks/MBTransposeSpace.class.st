Class {
	#name : #MBTransposeSpace,
	#superclass : #MBTranspose,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBTransposeSpace >> transposeAIColumnMatrix [

	
	self setupAIColumnMatrix.

	^ self bench:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTransposeSpace >> transposeAIDiagonalMatrix [

	
	self setupAIDiagonalMatrix .

	^ self bench:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTransposeSpace >> transposeAIRowMatrix [

	
	self setupAIRowMatrix.

	^ self bench:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTransposeSpace >> transposeAISymetricMatrix [

	
	self setupAISymetricMatrix .

	^ self bench:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTransposeSpace >> transposeArray2D [

	
	self setupArray2D .

	^ self bench:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTransposeSpace >> transposePMMatrix [

	
	self setupPMMatrix .

	^ self bench:[  a1 transpose ].
]

{ #category : #benchmarks }
MBTransposeSpace >> transposePMSymmetricMatrix [

	
	self setupPMSymmetricMatrix .

	^ self bench:[  a1 transpose ].
]
