Class {
	#name : #MBCopying,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #accessing }
MBCopying class >> friendlyName [ 


	^ 'Copying a Matrix'
]

{ #category : #accessing }
MBCopying class >> title [


	^ 'Copying a '
]

{ #category : #benchmarks }
MBCopying >> copyAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setupAIColumnMatrix>

	self initRepetitions timesRepeat:[  a1 copy ].
]

{ #category : #diagonal }
MBCopying >> copyAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setupAIDiagonalMatrix>

	self initRepetitions timesRepeat:[  a1 copy ].
]

{ #category : #normal }
MBCopying >> copyAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setupAIRowMatrix>

	self initRepetitions timesRepeat:[  a1 copy ].
]

{ #category : #symmetric }
MBCopying >> copyAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setupAISymetricMatrix>

	self initRepetitions timesRepeat:[  a1 copy ].
]

{ #category : #normal }
MBCopying >> copyArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setupArray2D>

	self initRepetitions timesRepeat:[  a1 copy ].
]

{ #category : #normal }
MBCopying >> copyPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	self initRepetitions timesRepeat:[  a1 copy ].
]

{ #category : #symmetric }
MBCopying >> copyPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	self initRepetitions timesRepeat:[  a1 copy ].
]
