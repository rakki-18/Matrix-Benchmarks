Class {
	#name : #MBCopyingSpace,
	#superclass : #MBCopying,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #benchmarks }
MBCopyingSpace >> copyAIColumnMatrix [

	<name: 'AIColumn'>
	self setupAIColumnMatrix.

	^ self bench:[  a1 copy ].
]

{ #category : #benchmarks }
MBCopyingSpace >> copyAIDiagonalMatrix [

	<name: 'AIDiagonal'>
	self setupAIDiagonalMatrix .

	^ self bench:[  a1 copy ].
]

{ #category : #benchmarks }
MBCopyingSpace >> copyAIRowMatrix [

	<name: 'AIRow'>
	self setupAIRowMatrix.

	^ self bench:[  a1 copy ].
]

{ #category : #benchmarks }
MBCopyingSpace >> copyAISymetricMatrix [

	<name: 'AISymetric'>
	self setupAISymetricMatrix .

	^ self bench:[  a1 copy ].
]

{ #category : #benchmarks }
MBCopyingSpace >> copyArray2D [

	<name: 'Array2D'>
	self setupArray2D .

	^ self bench:[  a1 copy ].
]

{ #category : #benchmarks }
MBCopyingSpace >> copyPMMatrix [

	<name: 'PMMatrix'>
	self setupPMMatrix .

	^ self bench:[  a1 copy ].
]

{ #category : #benchmarks }
MBCopyingSpace >> copyPMSymmetricMatrix [

	<name: 'PMSymmetric'>
	self setupPMSymmetricMatrix .

	^ self bench:[  a1 copy ].
]
