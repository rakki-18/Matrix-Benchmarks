Class {
	#name : #MBElementWiseMultiplicationSpace,
	#superclass : #MBElementWiseMultiplication,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBElementWiseMultiplicationSpace >> elementWiseMultiplyAIColumnMatrix [

	
	self setuptwoAIColumnMatrix.

	self bench:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplicationSpace >> elementWiseMultiplyAIDiagonalMatrix [

	
	self setuptwoAIDiagonalMatrix.

	self bench:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplicationSpace >> elementWiseMultiplyAIRowMatrix [

	
	self setuptwoAIRowMatrix.

	self bench:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplicationSpace >> elementWiseMultiplyAISymetricMatrix [

	
	self setuptwoAISymetricMatrix.

	self bench:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplicationSpace >> elementWiseMultiplyArray2D [

	
	self setuptwoArray2D.

	self bench:[  a1 * a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplicationSpace >> elementWiseMultiplyPMMatrix [

	
	self setuptwoArray2D.

	self bench:[ a1 hadamardProduct:  a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplicationSpace >> elementWiseMultiplyPMSymmetricMatrix [

	
	self setuptwoPMSymmetricMatrix.

	self bench:[  a1 hadamardProduct:  a2 ].
	
]
