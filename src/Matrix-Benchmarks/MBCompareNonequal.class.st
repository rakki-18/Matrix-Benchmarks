Class {
	#name : #MBCompareNonequal,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBCompareNonequal class >> title [


	^ 'Comparing non-equal matrices'
]

{ #category : #benchmarks }
MBCompareNonequal >> comparenonequalAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setuptwoAIColumnMatrix>

	self initRepetitions timesRepeat:[  a1 = a2 ].
]

{ #category : #diagonal }
MBCompareNonequal >> comparenonequalAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setuptwoAIDiagonalMatrix>

	self initRepetitions timesRepeat:[  a1 = a2 ].
]

{ #category : #normal }
MBCompareNonequal >> comparenonequalAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setuptwoAIRowMatrix>

	self initRepetitions timesRepeat:[  a1 = a2 ].
]

{ #category : #symmetric }
MBCompareNonequal >> comparenonequalAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setuptwoAISymetricMatrix>

	self initRepetitions timesRepeat:[  a1 = a2 ].
]

{ #category : #normal }
MBCompareNonequal >> comparenonequalArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setuptwoArray2D>

	self initRepetitions timesRepeat:[  a1 = a2 ].
]

{ #category : #normal }
MBCompareNonequal >> comparenonequalPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setuptwoPMMatrix>

	self initRepetitions timesRepeat:[  a1 = a2 ].
]

{ #category : #symmetric }
MBCompareNonequal >> comparenonequalPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setuptwoPMSymmetricMatrix>

	self initRepetitions timesRepeat:[  a1 = a2 ].
]

{ #category : #parameters }
MBCompareNonequal >> initRepetitions [ 

	^ 100000
]
