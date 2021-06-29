Class {
	#name : #MBRankFactorization,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBRankFactorization class >> title [


	^ 'Matrix Rank Factorization'
]

{ #category : #parameters }
MBRankFactorization >> initRepetitions [ 

	^ 1
]

{ #category : #parameters }
MBRankFactorization >> maxMatrixSize [ 

	^ 300.
]

{ #category : #normal }
MBRankFactorization >> rankPMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	self initRepetitions timesRepeat: [ a1 rank ].
]

{ #category : #symmetric }
MBRankFactorization >> rankPMSymmetricMatrix [


	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	self initRepetitions timesRepeat: [ a1 rank ].
]
