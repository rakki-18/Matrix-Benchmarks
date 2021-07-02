Class {
	#name : #MBCompareNonequalSpace,
	#superclass : #MBCompareNonequal,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBCompareNonequalSpace >> comparenonequalAIColumnMatrix [

	<name: 'AIColumn'>
	self setuptwoAIColumnMatrix.

	^ self bench:[  a1 = a2 ].
]

{ #category : #benchmarks }
MBCompareNonequalSpace >> comparenonequalAIDiagonalMatrix [

	<name: 'AIDiagonal'>
	self setuptwoAIDiagonalMatrix.

	^ self bench:[  a1 = a2 ].
]

{ #category : #benchmarks }
MBCompareNonequalSpace >> comparenonequalAIRowMatrix [

	<name: 'AIRow'>
	self setuptwoAIRowMatrix.

	^ self bench:[  a1 = a2 ].
]

{ #category : #benchmarks }
MBCompareNonequalSpace >> comparenonequalAISymetricMatrix [ 

	<name: 'AISymetric'>
	self setuptwoAISymetricMatrix.

	^ self bench:[  a1 = a2 ].
]

{ #category : #benchmarks }
MBCompareNonequalSpace >> comparenonequalArray2D [ 

	<name: 'Array2D'>
	self setuptwoArray2D.

	^ self bench:[  a1 = a2 ].
]

{ #category : #benchmarks }
MBCompareNonequalSpace >> comparenonequalPMMatrix [

	<name: 'PMMatrix'>
	self setuptwoPMMatrix .

	^ self bench:[  a1 = a2 ].
]

{ #category : #benchmarks }
MBCompareNonequalSpace >> comparenonequalPMSymmetricMatrix [ 

	<name: 'PMSymmetric'>
	self setuptwoPMSymmetricMatrix.

	^ self bench:[  a1 = a2 ].
]
