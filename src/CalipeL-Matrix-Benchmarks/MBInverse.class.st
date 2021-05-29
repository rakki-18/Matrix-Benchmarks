Class {
	#name : #MBInverse,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBInverse >> inversePMMatrix [


	<benchmark: 'PMMatrix Inversion'>
	<setup: #setupInvertiblePMMatrix>

	1 timesRepeat: [ a1 inverse ].
]
