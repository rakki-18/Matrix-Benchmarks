Class {
	#name : #MBDeterminant,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBDeterminant class >> title [


	^ 'Matrix Determinant'
]

{ #category : #normal }
MBDeterminant >> determinantPMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	self initRepetitions timesRepeat: [ a1 determinant ].
]

{ #category : #symmetric }
MBDeterminant >> determinantPMSymmetricMatrix [


	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	self initRepetitions timesRepeat: [ a1 determinant ].
]

{ #category : #parameters }
MBDeterminant >> initRepetitions [ 

	^ 1
]

{ #category : #parameters }
MBDeterminant >> maxMatrixSize [ 

	^ 300
]
