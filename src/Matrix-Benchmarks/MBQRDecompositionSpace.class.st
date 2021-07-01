Class {
	#name : #MBQRDecompositionSpace,
	#superclass : #MBQRDecomposition,
	#category : #'Matrix-Benchmarks'
}

{ #category : #normal }
MBQRDecompositionSpace >> qrPMMatrix [


	self setupPMMatrix.

	^ self bench: [ a1 qrFactorization  ].
]

{ #category : #normal }
MBQRDecompositionSpace >> qrPMSymmetricMatrix [


	self setupPMSymmetricMatrix.

	^ self bench: [ a1 qrFactorization  ].
]
