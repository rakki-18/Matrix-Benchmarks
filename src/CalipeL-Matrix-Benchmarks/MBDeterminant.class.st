Class {
	#name : #MBDeterminant,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBDeterminant >> determinantPMMatrix [


	<benchmark: 'Determinant of a PMMatrix'>
	<setup: #setupPMMatrix>

	1 timesRepeat: [ a1 determinant ].
]
