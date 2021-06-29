Class {
	#name : #MBSubtraction,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBSubtraction class >> title [


	^ 'Matrix Subtraction'
]

{ #category : #benchmarks }
MBSubtraction >> subtractAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setuptwoAIColumnMatrix>

	self initRepetitions timesRepeat:[  a1 - a2 ].
]

{ #category : #diagonal }
MBSubtraction >> subtractAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setuptwoAIDiagonalMatrix>

	self initRepetitions timesRepeat:[  a1 - a2 ].
]

{ #category : #normal }
MBSubtraction >> subtractAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setuptwoAIRowMatrix>

	self initRepetitions timesRepeat:[  a1 - a2 ].
]

{ #category : #symmetric }
MBSubtraction >> subtractAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setuptwoAISymetricMatrix>

	self initRepetitions timesRepeat:[  a1 - a2 ].
]

{ #category : #normal }
MBSubtraction >> subtractArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setuptwoArray2D>

	self initRepetitions timesRepeat:[  a1 - a2 ].
]

{ #category : #normal }
MBSubtraction >> subtractPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setuptwoPMMatrix>

	self initRepetitions timesRepeat:[  a1 - a2 ].
]

{ #category : #symmetric }
MBSubtraction >> subtractPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setuptwoPMSymmetricMatrix>

	self initRepetitions timesRepeat:[  a1 - a2 ].
]
