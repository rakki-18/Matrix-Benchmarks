Class {
	#name : #MBLUPDecompositionSpace,
	#superclass : #MBLUPDecomposition,
	#category : #'Matrix-Benchmarks'
}

{ #category : #normal }
MBLUPDecompositionSpace >> lupDecomposition [


	self setupPMLUPDecomposition.

	self bench: [ a1 solve: a2 ].
]
