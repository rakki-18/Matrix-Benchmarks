Class {
	#name : #MBStrassenMultiplication,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBStrassenMultiplication class >> title [


	^ 'Strassen Matrix Multiplication'
]

{ #category : #parameters }
MBStrassenMultiplication >> initRepetitions [ 

	^ 1
]

{ #category : #normal }
MBStrassenMultiplication >> strassenPMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupStrassenPMMatrix>

	self initRepetitions timesRepeat: [ a1 strassenProductWithMatrix: a2].
]
