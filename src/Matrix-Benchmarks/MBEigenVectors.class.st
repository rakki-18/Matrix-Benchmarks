"
I benchmark the operation, ""Finding eigenvectors of a matrix"".
https://en.wikipedia.org/wiki/Eigenvalues_and_eigenvectors

Public API and Key Messages

To run the benchmarks
- `MBEigenVectors runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBEigenVectors runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 300 and shows a line chart plot.
- `MBEigenVectors runAllBenchmarksFrom: fromMatrixSize to: toMatrixSize by: aNumber` runs the benchmarks for the set of matrix sizes specified if it is valid.

"
Class {
	#name : #MBEigenVectors,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBEigenVectors class >> title [

	^'Eigen vector decomposition '
]

{ #category : #normal }
MBEigenVectors >> eigenVectorDecomposition [


	<benchmark: 'PMJacobiTransformation'>
	<setup: #setupPMJacobiTransformation>

	|eigenvalues eigenvectors|

	eigenvalues := a1 evaluate.
	eigenvectors := a1 transform columnsCollect: [ :each | each].
]
