Class {
	#name : #MBRankFactorization,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBRankFactorization class >> title [


	^ 'Matrix Rank Factorization'
]

{ #category : #normal }
MBRankFactorization >> rankPMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	1 timesRepeat: [ a1 rank ].
]

{ #category : #symmetric }
MBRankFactorization >> rankPMSymmetricMatrix [


	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	1 timesRepeat: [ a1 rank ].
]
