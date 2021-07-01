Class {
	#name : #MBDeterminantSpace,
	#superclass : #MBDeterminant,
	#category : #'Matrix-Benchmarks'
}

{ #category : #normal }
MBDeterminantSpace >> determinantPMMatrix [


	self setupPMMatrix.

	self bench: [ a1 determinant ].
]

{ #category : #normal }
MBDeterminantSpace >> determinantPMSymmetricMatrix [


	self setupPMSymmetricMatrix.

	self bench: [ a1 determinant ].
]
