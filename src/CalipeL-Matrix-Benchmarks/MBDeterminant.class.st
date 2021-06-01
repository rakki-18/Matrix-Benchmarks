Class {
	#name : #MBDeterminant,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBDeterminant >> determinantPMMatrix [


	<benchmark: 'Determinant of a PMMatrix'>
	<setup: #setupSmallPMMatrix>

	1 timesRepeat: [ a1 determinant ].
]

{ #category : #benchmarks }
MBDeterminant >> determinantPMSymmetricMatrix [


	<benchmark: 'Determinant of a PMSymmetricMatrix'>
	<setup: #setupSmallPMSymmetricMatrix>

	1 timesRepeat: [ a1 determinant ].
]
