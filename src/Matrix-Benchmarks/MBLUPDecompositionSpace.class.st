Class {
	#name : #MBLUPDecompositionSpace,
	#superclass : #MBLUPDecomposition,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #normal }
MBLUPDecompositionSpace >> lupDecomposition [

	<name: 'PMLUPDecomposition'>
	self setupPMLUPDecomposition.

	^ self bench: [ a1 solve: a2 ].
]
