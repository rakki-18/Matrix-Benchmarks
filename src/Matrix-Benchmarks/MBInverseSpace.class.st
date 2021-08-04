Class {
	#name : #MBInverseSpace,
	#superclass : #MBInverse,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #normal }
MBInverseSpace >> inversePMMatrix [

	<name: 'PMMatrix'>
	self setupInvertiblePMMatrix.

	^ self bench: [ a1 inverse ].
]

{ #category : #normal }
MBInverseSpace >> inversePMSymmetricMatrix [

	<name: 'PMSymmetric'>
	self setupInvertiblePMSymmetricMatrix.

	^ self bench: [ a1 inverse ].
]
