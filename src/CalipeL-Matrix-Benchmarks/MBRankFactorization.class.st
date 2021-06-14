Class {
	#name : #MBRankFactorization,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #accessing }
MBRankFactorization class >> title [


	^ 'Matrix Rank Factorization'
]

{ #category : #benchmarks }
MBRankFactorization >> rankPMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	1 timesRepeat: [ a1 rank ].
]

{ #category : #benchmarks }
MBRankFactorization >> rankPMSymmetricMatrix [


	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	1 timesRepeat: [ a1 rank ].
]
