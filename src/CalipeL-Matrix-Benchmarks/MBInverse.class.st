Class {
	#name : #MBInverse,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #accessing }
MBInverse class >> title [


	^ 'Matrix Inverse'
]

{ #category : #benchmarks }
MBInverse >> inversePMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupInvertiblePMMatrix>

	1 timesRepeat: [ a1 inverse ].
]
