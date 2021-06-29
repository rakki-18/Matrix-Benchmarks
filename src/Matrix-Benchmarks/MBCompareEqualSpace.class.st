Class {
	#name : #MBCompareEqualSpace,
	#superclass : #MBCompareEqual,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBCompareEqualSpace >> compareEqualAIColumnMatrix [

	
	self setupAIColumnMatrix.

	^ self bench:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqualSpace >> compareEqualAIDiagonalMatrix [ 

	
	self setupAIDiagonalMatrix .

	^ self bench:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqualSpace >> compareEqualAIRowMatrix [ 

	
	self setupAIRowMatrix.

	^ self bench:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqualSpace >> compareEqualAISymetricMatrix [  

	
	self setupAISymetricMatrix .

	^ self bench:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqualSpace >> compareEqualArray2D [

	
	self setupArray2D.

	^ self bench:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqualSpace >> compareEqualPMMatrix [

	
	self setupPMMatrix.

	^ self bench:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqualSpace >> compareEqualPMSymmetricMatrix [ 

	
	self setupPMSymmetricMatrix.

	^ self bench:[  a1 = a1 ].
]
