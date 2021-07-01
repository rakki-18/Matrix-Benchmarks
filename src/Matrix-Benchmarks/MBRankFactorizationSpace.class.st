Class {
	#name : #MBRankFactorizationSpace,
	#superclass : #MBRankFactorization,
	#category : #'Matrix-Benchmarks'
}

{ #category : #normal }
MBRankFactorizationSpace >> rankPMMatrix [


	self setupPMMatrix.

	self bench: [ a1 rank ].
]

{ #category : #normal }
MBRankFactorizationSpace >> rankPMSymmetricMatrix [


	self setupPMSymmetricMatrix.

	self bench: [ a1 rank ].
]
