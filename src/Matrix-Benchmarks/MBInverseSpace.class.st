Class {
	#name : #MBInverseSpace,
	#superclass : #MBInverse,
	#category : #'Matrix-Benchmarks'
}

{ #category : #normal }
MBInverseSpace >> inversePMMatrix [


	self setupInvertiblePMMatrix.

	self bench: [ a1 inverse ].
]

{ #category : #normal }
MBInverseSpace >> inversePMSymmetricMatrix [


	self setupInvertiblePMSymmetricMatrix.

	self bench: [ a1 inverse ].
]
