Class {
	#name : #MBElementWiseMultiplicationSpace,
	#superclass : #MBElementWiseMultiplication,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #benchmarks }
MBElementWiseMultiplicationSpace >> elementWiseMultiplyAIColumnMatrix [

	<name: 'AIColumn'>
	self setuptwoAIColumnMatrix.

	^ self bench:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplicationSpace >> elementWiseMultiplyAIDiagonalMatrix [

	<name: 'AIDiagonal'>
	self setuptwoAIDiagonalMatrix.

	^ self bench:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplicationSpace >> elementWiseMultiplyAIRowMatrix [

	<name: 'AIRow'>
	self setuptwoAIRowMatrix.

	^ self bench:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplicationSpace >> elementWiseMultiplyAISymetricMatrix [

	<name: 'AISymetric'>
	self setuptwoAISymetricMatrix.

	^ self bench:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplicationSpace >> elementWiseMultiplyArray2D [

	<name: 'Array2D'>
	self setuptwoArray2D.

	^ self bench:[  a1 * a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplicationSpace >> elementWiseMultiplyPMMatrix [

	<name: 'PMMatrix'>
	self setuptwoPMMatrix.

	^ self bench:[ a1 hadamardProduct:  a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplicationSpace >> elementWiseMultiplyPMSymmetricMatrix [

	<name: 'PMSymmetric'>
	self setuptwoPMSymmetricMatrix.

	^ self bench:[  a1 hadamardProduct:  a2 ].
	
]
