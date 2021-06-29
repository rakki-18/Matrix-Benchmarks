Class {
	#name : #MBDivision,
	#superclass : #MBAbstract,
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

	self initRepetitions timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #diagonal }
MBDivision >> divideAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #( #setupAIDiagonalMatrix #setupNumber)>

	self initRepetitions timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #normal }
MBDivision >> divideAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #( #setupAIRowMatrix #setupNumber)>

	self initRepetitions timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #symmetric }
MBDivision >> divideAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #( #setupAISymetricMatrix #setupNumber)>

	self initRepetitions timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #normal }
MBDivision >> divideArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #( #setupArray2D #setupNumber)>

	self initRepetitions timesRepeat:[  a1 / aNumber ].
]
