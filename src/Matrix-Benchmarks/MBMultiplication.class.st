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

{ #category : #benchmarks }
MBMultiplication >> multiplyAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #( #setupAIDiagonalMatrix #setupNumber)>

	100 timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplication >> multiplyAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #( #setupAIRowMatrix #setupNumber)>

	100 timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplication >> multiplyAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #( #setupAISymetricMatrix #setupNumber)>

	100 timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplication >> multiplyArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #( #setupArray2D #setupNumber)>

	100 timesRepeat:[  a1 * aNumber ].
]

{ #category : #benchmarks }
MBMultiplication >> multiplyPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #( #setupPMMatrix #setupNumber)>

	100 timesRepeat:[  a1 * aNumber ].
]

{ #category : #benchmarks }
MBMultiplication >> multiplyPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #( #setupPMSymmetricMatrix #setupNumber)>

	100 timesRepeat:[  a1 * aNumber ].
]
