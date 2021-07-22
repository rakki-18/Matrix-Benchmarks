Class {
	#name : #MBSVDDecompositionSpace,
	#superclass : #MBSVDDecomposition,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #normal }
MBSVDDecompositionSpace >> svdDecomposition [

	<name: 'PMSingularValueDecomposition'>
	self setupPMMatrix.

	^ self bench: [ a1 decomposeSV ].
]
