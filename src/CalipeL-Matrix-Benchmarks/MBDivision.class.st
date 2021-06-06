Class {
	#name : #MBDivision,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #accessing }
MBDivision class >> title [


	^ 'Matrix Division'
]

{ #category : #benchmarks }
MBDivision >> divideAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setupAIColumnMatrixandNumber>

	100 timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivision >> divideAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setupAIDiagonalMatrixandNumber>

	100 timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivision >> divideAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setupAIRowMatrixandNumber>

	100 timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivision >> divideAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setupAISymetricMatrixandNumber>

	100 timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivision >> divideArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setupArray2DandNumber>

	100 timesRepeat:[  a1 / aNumber ].
]
