Class {
	#name : #MBInverse,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBInverse class >> title [


	^ 'Matrix Inverse'
]

{ #category : #normal }
MBInverse >> inversePMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupInvertiblePMMatrix>

	1 timesRepeat: [ a1 inverse ].
]

{ #category : #symmetric }
MBInverse >> inversePMSymmetricMatrix [


	<benchmark: 'PMSymmetricMatrix'>
	<setup: #setupInvertiblePMSymmetricMatrix>

	1 timesRepeat: [ a1 inverse ].
]
