Class {
	#name : #MBSubtractionSpace,
	#superclass : #MBSubtraction,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBSubtractionSpace >> subtractAIColumnMatrix [

	
	self setuptwoAIColumnMatrix.

	^ self bench:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtractionSpace >> subtractAIDiagonalMatrix [ 

	
	self setuptwoAIDiagonalMatrix.

	^ self bench:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtractionSpace >> subtractAIRowMatrix [ 

	
	self setuptwoAIRowMatrix.

	^ self bench:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtractionSpace >> subtractAISymetricMatrix [ 

	
	self setuptwoAISymetricMatrix.

	^ self bench:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtractionSpace >> subtractArray2D [

	
	self setuptwoArray2D.

	^ self bench:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtractionSpace >> subtractPMMatrix [

	
	self setuptwoPMMatrix.

	^ self bench:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtractionSpace >> subtractPMSymmetricMatrix [

	
	self setuptwoPMSymmetricMatrix.

	^ self bench:[  a1 - a2 ].
]
