"
I benchmark the operation, ""Finding the [SVD Decomposition](https://en.wikipedia.org/wiki/Singular_value_decomposition) of a matrix"".

Public API and Key Messages

To run the benchmarks
- `MBSVDDecomposition runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBSVDDecomposition runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 150 and shows a line chart plot.

This operation takes a lot of time and hence big matrix sizes won't be passed by the API.
Only `PMMatrix` and `PMSymmetricMatrix` support this operation.

"
Class {
	#name : #MBSVDDecomposition,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBSVDDecomposition class >> title [

	^'SVD Decomposition '
]

{ #category : #parameters }
MBSVDDecomposition >> initRepetitions [ 

	^ 1
]

{ #category : #parameters }
MBSVDDecomposition >> maxMatrixSize [ 

	^ 300.
]

{ #category : #normal }
MBSVDDecomposition >> svdDecomposition [


	<benchmark: 'PMSingularValueDecomposition'>
	<setup: #setupPMMatrix>

	self initRepetitions timesRepeat: [ a1 decomposeSV ].
]
