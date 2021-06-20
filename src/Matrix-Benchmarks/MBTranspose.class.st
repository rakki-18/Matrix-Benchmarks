Class {
	#name : #MBTranspose,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBTranspose class >> title [


	^ 'Transpose of a Matrix'
]

{ #category : #benchmarks }
MBTranspose >> transposeAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setupAIColumnMatrix>

	self initRepetitions timesRepeat:[  a1 transposed ].
]

{ #category : #diagonal }
MBTranspose >> transposeAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setupAIDiagonalMatrix>

	self initRepetitions timesRepeat:[  a1 transposed ].
]

{ #category : #normal }
MBTranspose >> transposeAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setupAIRowMatrix>

	self initRepetitions timesRepeat:[  a1 transposed ].
]

{ #category : #symmetric }
MBTranspose >> transposeAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setupAISymetricMatrix>

	self initRepetitions timesRepeat:[  a1 transposed ].
]

{ #category : #normal }
MBTranspose >> transposeArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setupArray2D>

	self initRepetitions timesRepeat:[  a1 transposed ].
]

{ #category : #normal }
MBTranspose >> transposePMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	self initRepetitions timesRepeat:[  a1 transpose ].
]

{ #category : #symmetric }
MBTranspose >> transposePMSymmetricMatrix [

	
	<benchmark: 'PMSymmetricMatrix'>
	<setup: #setupPMSymmetricMatrix>

	self initRepetitions timesRepeat:[  a1 transpose ].
]
