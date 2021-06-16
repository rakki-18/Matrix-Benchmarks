Class {
	#name : #MBDeterminant,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBDeterminant class >> title [


	^ 'Matrix Determinant'
]

{ #category : #benchmarks }
MBDeterminant >> determinantPMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	1 timesRepeat: [ a1 determinant ].
]

{ #category : #benchmarks }
MBDeterminant >> determinantPMSymmetricMatrix [


	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	1 timesRepeat: [ a1 determinant ].
]
