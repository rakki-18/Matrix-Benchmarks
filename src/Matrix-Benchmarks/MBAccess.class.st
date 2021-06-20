Class {
	#name : #MBAccess,
	#superclass : #MBSetup,
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

	1000000 timesRepeat:[  a1 at: matrixSize floor and: matrixSize ].
]

{ #category : #diagonal }
MBAccess >> accessAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setupAIDiagonalMatrix>

	1000000 timesRepeat:[  a1 at: matrixSize floor and: matrixSize ].
]

{ #category : #normal }
MBAccess >> accessAIRowMatrix [


	<benchmark: 'AIRow'>
	<setup: #setupAIRowMatrix>

	1000000 timesRepeat:[  a1 at: matrixSize floor and: matrixSize ].
]

{ #category : #symmetric }
MBAccess >> accessAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setupAISymetricMatrix>

	1000000 timesRepeat:[  a1 at: matrixSize floor and: matrixSize ].
]

{ #category : #normal }
MBAccess >> accessArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setupArray2D>

	1000000 timesRepeat:[  a1 at: matrixSize floor at: matrixSize ].
]

{ #category : #normal }
MBAccess >> accessPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	1000000 timesRepeat:[  a1 at: matrixSize floor at: matrixSize ].
]

{ #category : #symmetric }
MBAccess >> accessPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	1000000 timesRepeat:[  a1 at: matrixSize floor at: matrixSize ].
]

{ #category : #parameters }
MBAccess >> initRepetitions [ 

	^ 100000
]
