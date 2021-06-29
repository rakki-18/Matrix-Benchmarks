Class {
	#name : #MBEigenVectors,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBEigenVectors class >> title [

	^'Eigen vector decomposition'
]

{ #category : #normal }
MBEigenVectors >> eigenVectorDecomposition [


	<benchmark: 'PMJacobiTransformation'>
	<setup: #setupPMJacobiTransformation>

	|eigenvalues eigenvectors|

	eigenvalues := a1 evaluate.
	eigenvectors := a1 transform columnsCollect: [ :each | each].
]
