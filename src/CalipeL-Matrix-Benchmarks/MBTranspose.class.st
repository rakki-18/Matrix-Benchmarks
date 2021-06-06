Class {
	#name : #MBTranspose,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #accessing }
MBTranspose class >> title [


	^ 'Transpose of a Matrix'
]

{ #category : #benchmarks }
MBTranspose >> transposeAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setupAIColumnMatrix>

	100 timesRepeat:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTranspose >> transposeAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setupAIDiagonalMatrix>

	100 timesRepeat:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTranspose >> transposeAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setupAIRowMatrix>

	100 timesRepeat:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTranspose >> transposeAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setupAISymetricMatrix>

	100 timesRepeat:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTranspose >> transposeArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setupArray2D>

	100 timesRepeat:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTranspose >> transposePMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	100 timesRepeat:[  a1 transpose ].
]
