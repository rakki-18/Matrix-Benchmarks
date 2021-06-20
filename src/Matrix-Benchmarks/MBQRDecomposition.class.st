Class {
	#name : #MBQRDecomposition,
	#superclass : #MBSetup,
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

{ #category : #normal }
MBQRDecomposition >> qrPMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	1 timesRepeat: [ a1 qrFactorization  ].
]

{ #category : #symmetric }
MBQRDecomposition >> qrPMSymmetricMatrix [


	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	1 timesRepeat: [ a1 qrFactorization  ].
]
