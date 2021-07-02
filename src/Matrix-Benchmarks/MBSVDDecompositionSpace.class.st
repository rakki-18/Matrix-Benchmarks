Class {
	#name : #MBSVDDecompositionSpace,
	#superclass : #MBSVDDecomposition,
	#category : #'Matrix-Benchmarks'
}

{ #category : #normal }
MBSVDDecompositionSpace >> svdDecomposition [

	<name: 'PMSingularValueDecomposition'>
	self setupPMMatrix.

	^ self bench: [ a1 decomposeSV ].
]
