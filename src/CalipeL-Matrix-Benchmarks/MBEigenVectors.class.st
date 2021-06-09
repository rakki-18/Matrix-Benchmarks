Class {
	#name : #MBEigenVectors,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #accessing }
MBEigenVectors class >> title [

	^'Eigen vector decomposition'
]

{ #category : #benchmarks }
MBEigenVectors >> eigenVectorDecomposition [


	<benchmark: 'PMJacobiTransformation'>
	<setup: #setupPMMatrix>

	|jacobi eigenvalues eigenvectors|
	jacobi := PMJacobiTransformation matrix: a1.
	eigenvalues := jacobi evaluate.
	eigenvectors := jacobi transform columnsCollect: [ :each | each].
]
