Class {
	#name : #MBQRDecomposition,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #accessing }
MBQRDecomposition class >> title [


	^ 'Matrix QR Decomposition'
]

{ #category : #benchmarks }
MBQRDecomposition >> qrPMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupSmallPMMatrix>

	1 timesRepeat: [ a1 qrFactorization  ].
]

{ #category : #benchmarks }
MBQRDecomposition >> qrPMSymmetricMatrix [


	<benchmark: 'PMSymmetric'>
	<setup: #setupSmallPMSymmetricMatrix>

	1 timesRepeat: [ a1 qrFactorization  ].
]
