Class {
	#name : #MBInverse,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBInverse class >> title [


	^ 'Matrix Inverse'
]

{ #category : #parameters }
MBInverse >> initRepetitions [ 

	^ 1
]

{ #category : #normal }
MBInverse >> inversePMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupInvertiblePMMatrix>

	self initRepetitions timesRepeat: [ a1 inverse ].
]

{ #category : #symmetric }
MBInverse >> inversePMSymmetricMatrix [


	<benchmark: 'PMSymmetricMatrix'>
	<setup: #setupInvertiblePMSymmetricMatrix>

	self initRepetitions timesRepeat: [ a1 inverse ].
]

{ #category : #parameters }
MBInverse >> maxMatrixSize [ 

	^ 300.
]
