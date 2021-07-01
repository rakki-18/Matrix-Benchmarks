Class {
	#name : #MBSVDDecompositionSpace,
	#superclass : #MBSVDDecomposition,
	#category : #'Matrix-Benchmarks'
}

{ #category : #normal }
MBSVDDecompositionSpace >> svdDecomposition [


	self setupPMMatrix.

	^ self bench: [ a1 decomposeSV ].
]
