Class {
	#name : #MBAdditionSpace,
	#superclass : #MBAddition,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #adding }
MBAdditionSpace >> addAIColumnMatrix [

	<name: 'AIColumn'>
	self setuptwoAIColumnMatrix.

	^ self bench: [ a1 + a2 ].
]

{ #category : #adding }
MBAdditionSpace >> addAIDiagonalMatrix [

	<name: 'AIDiagonal'>
	self setuptwoAIDiagonalMatrix.

	^ self bench: [ a1 + a2 ].
]

{ #category : #adding }
MBAdditionSpace >> addAIRowMatrix [

	<name: 'AIRow'>
	self setuptwoAIRowMatrix.

	^ self bench: [ a1 + a2 ].
]

{ #category : #adding }
MBAdditionSpace >> addAISymetricMatrix [

	<name: 'AISymetric'>
	self setuptwoAISymetricMatrix.

	^ self bench: [ a1 + a2 ].
]

{ #category : #adding }
MBAdditionSpace >> addArray2D [

	<name: 'Array2D'>
	self setuptwoArray2D.

	^ self bench: [ a1 + a2 ].
]

{ #category : #adding }
MBAdditionSpace >> addPMMatrix [

	<name: 'PMMatrix'>
	self setuptwoPMMatrix.

	^ self bench: [ a1 + a2 ].
]

{ #category : #adding }
MBAdditionSpace >> addPMSymmetricMatrix [ 

	<name: 'PMSymmetric'>
	self setuptwoPMSymmetricMatrix.

	^ self bench: [ a1 + a2 ].
]
