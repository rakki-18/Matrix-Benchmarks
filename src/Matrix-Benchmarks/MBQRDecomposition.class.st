"
I benchmark the operation, ""Finding the [QR Decomposition](https://en.wikipedia.org/wiki/QR_decomposition) of a matrix"".

Public API and Key Messages

To run the benchmarks
- `MBQRDecomposition runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBQRDecomposition runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 150 and shows a line chart plot.

This operation takes a lot of time and hence big matrix sizes won't be passed by the API.
Only `PMMatrix` and `PMSymmetricMatrix` support this operation.

"
Class {
	#name : #MBQRDecomposition,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBQRDecomposition class >> title [


	^ 'Matrix QR Decomposition'
]

{ #category : #parameters }
MBQRDecomposition >> initRepetitions [ 

	^ 1
]

{ #category : #parameters }
MBQRDecomposition >> maxMatrixSize [ 

	^ 300.
]

{ #category : #normal }
MBQRDecomposition >> qrPMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	self initRepetitions timesRepeat: [ a1 qrFactorization  ].
]

{ #category : #symmetric }
MBQRDecomposition >> qrPMSymmetricMatrix [


	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	self initRepetitions timesRepeat: [ a1 qrFactorization  ].
]
