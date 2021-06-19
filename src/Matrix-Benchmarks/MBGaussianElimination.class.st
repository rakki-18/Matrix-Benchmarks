Class {
	#name : #MBGaussianElimination,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBGaussianElimination class >> title [

	^'Gaussian Elimination of Matrix'
]

{ #category : #normal }
MBGaussianElimination >> gaussianElimination [


	<benchmark: 'PMLinearEquationSystem'>
	<setup: #setupPMLinearEquationSystem>

	1 timesRepeat: [ a1 solution ].
]
