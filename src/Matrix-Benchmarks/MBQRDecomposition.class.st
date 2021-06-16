Class {
	#name : #MBQRDecomposition,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBQRDecomposition class >> title [


	^ 'Matrix QR Decomposition'
]

{ #category : #benchmarks }
MBQRDecomposition >> qrPMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	1 timesRepeat: [ a1 qrFactorization  ].
]

{ #category : #benchmarks }
MBQRDecomposition >> qrPMSymmetricMatrix [


	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	1 timesRepeat: [ a1 qrFactorization  ].
]
