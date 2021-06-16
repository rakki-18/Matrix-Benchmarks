Class {
	#name : #MBAccess,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBAccess class >> title [


	^ 'Accessing a Matrix'
]

{ #category : #benchmarks }
MBAccess >> accessAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setupAIColumnMatrix>

	1000000 timesRepeat:[  a1 at: matrixSize floor and: matrixSize ].
]

{ #category : #benchmarks }
MBAccess >> accessAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setupAIDiagonalMatrix>

	1000000 timesRepeat:[  a1 at: matrixSize floor and: matrixSize ].
]

{ #category : #benchmarks }
MBAccess >> accessAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setupAIRowMatrix>

	1000000 timesRepeat:[  a1 at: matrixSize floor and: matrixSize ].
]

{ #category : #benchmarks }
MBAccess >> accessAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setupAISymetricMatrix>

	1000000 timesRepeat:[  a1 at: matrixSize floor and: matrixSize ].
]

{ #category : #benchmarks }
MBAccess >> accessArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setupArray2D>

	1000000 timesRepeat:[  a1 at: matrixSize floor at: matrixSize ].
]

{ #category : #benchmarks }
MBAccess >> accessPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	1000000 timesRepeat:[  a1 at: matrixSize floor at: matrixSize ].
]

{ #category : #benchmarks }
MBAccess >> accessPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	1000000 timesRepeat:[  a1 at: matrixSize floor at: matrixSize ].
]
