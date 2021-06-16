Class {
	#name : #MBStrassenMultiplication,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBStrassenMultiplication class >> title [


	^ 'Strassen Matrix Multiplication'
]

{ #category : #benchmarks }
MBStrassenMultiplication >> strassenPMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupStrassenPMMatrix>

	1 timesRepeat: [ a1 strassenProductWithMatrix: a2].
]
