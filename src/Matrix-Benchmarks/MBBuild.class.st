Class {
	#name : #MBBuild,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBBuild class >> title [


	^ 'Building a NULL Matrix'
]

{ #category : #benchmarks }
MBBuild >> buildAIColumnMatrix [

	
	<benchmark: 'AIColumn'>

	self initRepetitions timesRepeat:[  AIColumnMatrix new: 500 ].
	
]

{ #category : #diagonal }
MBBuild >> buildAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>

	self initRepetitions timesRepeat:[  AIDiagonalMatrix new: 500 ].
	
]

{ #category : #normal }
MBBuild >> buildAIRowMatrix [

	
	<benchmark: 'AIRow'>

	self initRepetitions timesRepeat:[  AIRowMatrix new: 500 ].
	
]

{ #category : #symmetric }
MBBuild >> buildAISymetricMatrix [

	
	<benchmark: 'AISymetric'>

	self initRepetitions timesRepeat:[  AISymetricMatrix new: 500 ].
	
]

{ #category : #normal }
MBBuild >> buildArray2D [

	
	<benchmark: 'Array2D'>

	self initRepetitions timesRepeat:[  Array2D new: 500 ].
	
]

{ #category : #normal }
MBBuild >> buildPMMatrix [

	
	<benchmark: 'PMMatrix'>


	self initRepetitions timesRepeat:[  PMMatrix new: 500 ].
]

{ #category : #symmetric }
MBBuild >> buildPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>


	self initRepetitions timesRepeat:[  PMSymmetricMatrix new: 500 ].
]
