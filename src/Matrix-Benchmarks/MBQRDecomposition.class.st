Class {
	#name : #MBQRDecomposition,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBQRDecomposition class >> title [


	^ 'Matrix QR Decomposition'
]

{ #category : #parameters }
MBQRDecomposition >> initRepetitions [ 

	^ 1
]

{ #category : #parameters }
MBQRDecomposition >> maxMatrixSize [ 

	^ 300.
]

{ #category : #normal }
MBQRDecomposition >> qrPMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	self initRepetitions timesRepeat: [ a1 qrFactorization  ].
]

{ #category : #symmetric }
MBQRDecomposition >> qrPMSymmetricMatrix [


	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	self initRepetitions timesRepeat: [ a1 qrFactorization  ].
]
