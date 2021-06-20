Class {
	#name : #MBCompareEqual,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBCompareEqual class >> title [


	^ 'Comparing equal matrices'
]

{ #category : #benchmarks }
MBCompareEqual >> comparEqualAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setupAIColumnMatrix>

	self initRepetitions timesRepeat:[  a1 = a1 ].
]

{ #category : #diagonal }
MBCompareEqual >> comparEqualAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setupAIDiagonalMatrix>

	self initRepetitions timesRepeat:[  a1 = a1 ].
]

{ #category : #normal }
MBCompareEqual >> comparEqualAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setupAIRowMatrix>

	self initRepetitions timesRepeat:[  a1 = a1 ].
]

{ #category : #symmetric }
MBCompareEqual >> comparEqualAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setupAISymetricMatrix>

	self initRepetitions timesRepeat:[  a1 = a1 ].
]

{ #category : #normal }
MBCompareEqual >> compareEqualArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setupArray2D>

	self initRepetitions timesRepeat:[  a1 = a1 ].
]

{ #category : #normal }
MBCompareEqual >> compareEqualPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	self initRepetitions timesRepeat:[  a1 = a1 ].
]

{ #category : #symmetric }
MBCompareEqual >> compareEqualPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	self initRepetitions timesRepeat:[  a1 = a1 ].
]

{ #category : #parameters }
MBCompareEqual >> initRepetitions [ 

	^ 100000
]
