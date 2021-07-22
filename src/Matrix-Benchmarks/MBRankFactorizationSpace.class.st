Class {
	#name : #MBRankFactorizationSpace,
	#superclass : #MBRankFactorization,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #normal }
MBRankFactorizationSpace >> rankPMMatrix [

	<name: 'PMMatrix'>
	self setupPMMatrix.

	^ self bench: [ a1 rank ].
]

{ #category : #normal }
MBRankFactorizationSpace >> rankPMSymmetricMatrix [

	<name: 'PMSymmetricMatrix'>
	self setupPMSymmetricMatrix.

	^ self bench: [ a1 rank ].
]
