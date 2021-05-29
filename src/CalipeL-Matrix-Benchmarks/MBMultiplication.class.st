Class {
	#name : #MBMultiplication,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBMultiplication >> multiplyAIMatrix [

	
	<benchmark: 'AIMatrix multiplication'>
	<setup: #setupAIMatrixandNumber>

	100 timesRepeat:[  a1 * aNumber ].
	
]

{ #category : #benchmarks }
MBMultiplication >> multiplyArray2D [

	
	<benchmark: 'Array2D multiplication'>
	<setup: #setupArray2DandNumber>

	100 timesRepeat:[  a1 * aNumber ].
]

{ #category : #benchmarks }
MBMultiplication >> multiplyPMMatrix [

	
	<benchmark: 'PMMatrix multiplication'>
	<setup: #setupPMMatrixandNumber>

	100 timesRepeat:[  a1 * aNumber ].
]

{ #category : #benchmarks }
MBMultiplication >> multiplyPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetricMatrix multiplication'>
	<setup: #setupPMSymmetricMatrixandNumber>

	100 timesRepeat:[  a1 * aNumber ].
]
