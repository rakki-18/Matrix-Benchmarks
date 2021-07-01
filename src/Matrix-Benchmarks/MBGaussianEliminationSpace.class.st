Class {
	#name : #MBGaussianEliminationSpace,
	#superclass : #MBGaussianElimination,
	#category : #'Matrix-Benchmarks'
}

{ #category : #normal }
MBGaussianEliminationSpace >> gaussianElimination [


	self setupPMLinearEquationSystem.

	self bench: [ a1 solution ].
]
