Class {
	#name : #MBAccess,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBAccess class >> title [


	^ 'Accessing a Matrix'
]

{ #category : #'as yet unclassified' }
MBAccess >> accessAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setupAIColumnMatrix>

	1000000 timesRepeat:[  a1 at: matrixSize  and: matrixSize ].
]

{ #category : #diagonal }
MBAccess >> accessAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setupAIDiagonalMatrix>

	self initRepetitions  timesRepeat:[  a1 at: matrixSize  and: matrixSize ].
]

{ #category : #normal }
MBAccess >> accessAIRowMatrix [


	<benchmark: 'AIRow'>
	<setup: #setupAIRowMatrix>

	 self initRepetitions timesRepeat: [  a1 at: matrixSize floor and: matrixSize ].
]

{ #category : #symmetric }
MBAccess >> accessAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setupAISymetricMatrix>

	self initRepetitions timesRepeat:[  a1 at: matrixSize floor and: matrixSize ].
]

{ #category : #normal }
MBAccess >> accessArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setupArray2D>

	self initRepetitions timesRepeat:[  a1 at: matrixSize floor at: matrixSize ].
]

{ #category : #normal }
MBAccess >> accessPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	self initRepetitions timesRepeat:[  a1 at: matrixSize floor at: matrixSize ].
]

{ #category : #symmetric }
MBAccess >> accessPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	self initRepetitions timesRepeat:[  a1 at: matrixSize floor at: matrixSize ].
]

{ #category : #parameters }
MBAccess >> initRepetitions [ 

	^ 100000
]
