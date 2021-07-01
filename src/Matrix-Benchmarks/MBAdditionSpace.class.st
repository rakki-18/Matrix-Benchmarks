Class {
	#name : #MBAdditionSpace,
	#superclass : #MBAddition,
	#category : #'Matrix-Benchmarks'
}

{ #category : #adding }
MBAdditionSpace >> addAIColumnMatrix [

	
	self setuptwoAIColumnMatrix.

	self bench: [ a1 + a2 ].
]

{ #category : #adding }
MBAdditionSpace >> addAIDiagonalMatrix [

	
	self setuptwoAIDiagonalMatrix.

	self bench: [ a1 + a2 ].
]

{ #category : #adding }
MBAdditionSpace >> addAIRowMatrix [

	
	self setuptwoAIRowMatrix.

	self bench: [ a1 + a2 ].
]

{ #category : #adding }
MBAdditionSpace >> addAISymetricMatrix [

	
	self setuptwoAISymetricMatrix.

	self bench: [ a1 + a2 ].
]

{ #category : #adding }
MBAdditionSpace >> addArray2D [

	
	self setuptwoArray2D.

	self bench: [ a1 + a2 ].
]

{ #category : #adding }
MBAdditionSpace >> addPMMatrix [

	
	self setuptwoPMMatrix.

	self bench: [ a1 + a2 ].
]

{ #category : #adding }
MBAdditionSpace >> addPMSymmetricMatrix [ 

	
	self setuptwoPMSymmetricMatrix.

	self bench: [ a1 + a2 ].
]
