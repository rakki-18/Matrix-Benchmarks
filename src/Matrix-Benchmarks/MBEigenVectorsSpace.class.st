Class {
	#name : #MBEigenVectorsSpace,
	#superclass : #MBEigenVectors,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #normal }
MBEigenVectorsSpace >> eigenVectorDecomposition [

	<name: 'PMJacobiTransformation'>
	self setupPMJacobiTransformation.

	^ self bench: [  
		|eigenvalues eigenvectors|

		eigenvalues := a1 evaluate.
		eigenvectors := a1 transform columnsCollect: [ :each | each].
		]
]
