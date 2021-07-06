"
I benchmark the operation, ""Finding the [rank factorization](https://en.wikipedia.org/wiki/Rank_factorization#:~:text=In%20mathematics%2C%20given%20an%20m,an%20r%20%C3%97%20n%20matrix.n) of a matrix"".

Public API and Key Messages

To run the benchmarks
- `MBRankFactorization runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBRankFactorization runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 150 and shows a line chart plot.

This operation takes a lot of time and hence big matrix sizes won't be passed by the API.
Only `PMMatrix` and `PMSymmetricMatrix` support this operation.

"
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
