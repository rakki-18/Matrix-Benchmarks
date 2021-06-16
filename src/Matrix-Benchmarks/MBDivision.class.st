Class {
	#name : #MBDivision,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBDivision class >> title [


	^ 'Matrix Division'
]

{ #category : #benchmarks }
MBDivision >> divideAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #( #setupAIColumnMatrix #setupNumber)>

	100 timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivision >> divideAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #( #setupAIDiagonalMatrix #setupNumber)>

	100 timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivision >> divideAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #( #setupAIRowMatrix #setupNumber)>

	100 timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivision >> divideAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #( #setupAISymetricMatrix #setupNumber)>

	100 timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivision >> divideArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #( #setupArray2D #setupNumber)>

	100 timesRepeat:[  a1 / aNumber ].
]
