Class {
	#name : #MBMultiplication,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBMultiplication class >> title [


	^ 'Scalar multiplication'
]

{ #category : #benchmarks }
MBMultiplication >> multiplyAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #( #setupAIColumnMatrix #setupNumber)>

	100 timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #diagonal }
MBMultiplication >> multiplyAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #( #setupAIDiagonalMatrix #setupNumber)>

	100 timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #normal }
MBMultiplication >> multiplyAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #( #setupAIRowMatrix #setupNumber)>

	100 timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #symmetric }
MBMultiplication >> multiplyAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #( #setupAISymetricMatrix #setupNumber)>

	100 timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #normal }
MBMultiplication >> multiplyArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #( #setupArray2D #setupNumber)>

	100 timesRepeat:[  a1 * aNumber ].
]

{ #category : #normal }
MBMultiplication >> multiplyPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #( #setupPMMatrix #setupNumber)>

	100 timesRepeat:[  a1 * aNumber ].
]

{ #category : #symmetric }
MBMultiplication >> multiplyPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #( #setupPMSymmetricMatrix #setupNumber)>

	100 timesRepeat:[  a1 * aNumber ].
]
