Class {
	#name : #MBMultiplication,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #accessing }
MBMultiplication class >> title [


	^ 'Scalar multiplication'
]

{ #category : #benchmarks }
MBMultiplication >> multiplyAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setupAIColumnMatrixandNumber>

	100 timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplication >> multiplyAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setupAIDiagonalMatrixandNumber>

	100 timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplication >> multiplyAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setupAIRowMatrixandNumber>

	100 timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplication >> multiplyAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setupAISymetricMatrixandNumber>

	100 timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplication >> multiplyArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setupArray2DandNumber>

	100 timesRepeat:[  a1 * aNumber ].
]

{ #category : #benchmarks }
MBMultiplication >> multiplyPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrixandNumber>

	100 timesRepeat:[  a1 * aNumber ].
]

{ #category : #benchmarks }
MBMultiplication >> multiplyPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrixandNumber>

	100 timesRepeat:[  a1 * aNumber ].
]
