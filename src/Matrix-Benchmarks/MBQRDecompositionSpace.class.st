Class {
	#name : #MBQRDecompositionSpace,
	#superclass : #MBQRDecomposition,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #normal }
MBQRDecompositionSpace >> qrPMMatrix [

	<name: 'PMMatrix'>
	self setupPMMatrix.

	^ self bench: [ a1 qrFactorization  ].
]

{ #category : #normal }
MBQRDecompositionSpace >> qrPMSymmetricMatrix [

	<name: 'PMSymmetric'>
	self setupPMSymmetricMatrix.

	^ self bench: [ a1 qrFactorization  ].
]
