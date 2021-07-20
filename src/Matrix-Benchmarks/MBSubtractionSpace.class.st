Class {
	#name : #MBSubtractionSpace,
	#superclass : #MBSubtraction,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #benchmarks }
MBSubtractionSpace >> subtractAIColumnMatrix [

	<name: 'AIColumn'>
	self setuptwoAIColumnMatrix.

	^ self bench:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtractionSpace >> subtractAIDiagonalMatrix [ 

	<name: 'AIDiagonal'>
	self setuptwoAIDiagonalMatrix.

	^ self bench:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtractionSpace >> subtractAIRowMatrix [ 

	<name: 'AIRow'>
	self setuptwoAIRowMatrix.

	^ self bench:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtractionSpace >> subtractAISymetricMatrix [ 

	<name: 'AISymetric'>
	self setuptwoAISymetricMatrix.

	^ self bench:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtractionSpace >> subtractArray2D [

	<name: 'Array2D'>
	self setuptwoArray2D.

	^ self bench:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtractionSpace >> subtractPMMatrix [

	<name: 'PMMatrix'>
	self setuptwoPMMatrix.

	^ self bench:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtractionSpace >> subtractPMSymmetricMatrix [

	<name: 'PMSymmetric'>
	self setuptwoPMSymmetricMatrix.

	^ self bench:[  a1 - a2 ].
]
