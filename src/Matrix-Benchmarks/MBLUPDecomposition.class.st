"
I benchmark the operation, ""Finding the [LUP Decomposition](https://en.wikipedia.org/wiki/LU_decomposition) of a matrix"".

Public API and Key Messages

To run the benchmarks
- `MBLUPDecomposition runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBLUPDecomposition runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 150 and shows a line chart plot.
- `MBLUPDecomposition runAllBenchmarksFrom: fromMatrixSize to: toMatrixSize by: aNumber` runs the benchmarks for the set of matrix sizes specified if it is valid.


This operation takes a lot of time and hence big matrix sizes won't be passed by the API.
`PMLUPDecomposition` supports this operation.

"
Class {
	#name : #MBLUPDecomposition,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #accessing }
MBLUPDecomposition class >> title [

	^'LUP Decomposition '
]

{ #category : #parameters }
MBLUPDecomposition >> initRepetitions [ 

	^ 1
]

{ #category : #normal }
MBLUPDecomposition >> lupDecomposition [


	<benchmark: 'PMLUPDecomposition'>
	<setup: #setupPMLUPDecomposition>

	self initRepetitions timesRepeat: [ a1 solve: a2 ].
]

{ #category : #parameters }
MBLUPDecomposition >> maxMatrixSize [ 

	^ 300.
]
