Class {
	#name : #MBEigenVectors,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBEigenVectors class >> title [

	^'Eigen vector decomposition'
]

{ #category : #benchmarks }
MBEigenVectors >> eigenVectorDecomposition [


	<benchmark: 'PMJacobiTransformation'>
	<setup: #setupPMJacobiTransformation>

	|eigenvalues eigenvectors|

	eigenvalues := a1 evaluate.
	eigenvectors := a1 transform columnsCollect: [ :each | each].
]
