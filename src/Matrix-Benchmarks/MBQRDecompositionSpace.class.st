Class {
	#name : #MBQRDecompositionSpace,
	#superclass : #MBQRDecomposition,
	#category : #'Matrix-Benchmarks'
}

{ #category : #normal }
MBQRDecompositionSpace >> qrPMMatrix [

	<name: 'PMMatrix'>
	self setupPMMatrix.

	^ self bench: [ a1 qrFactorization  ].
]

{ #category : #normal }
MBQRDecompositionSpace >> qrPMSymmetricMatrix [

	<name: 'PMSymmetricMatrix'>
	self setupPMSymmetricMatrix.

	^ self bench: [ a1 qrFactorization  ].
]
