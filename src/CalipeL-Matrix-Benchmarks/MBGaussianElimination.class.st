Class {
	#name : #MBGaussianElimination,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #accessing }
MBGaussianElimination class >> title [

	^'Gaussian Elimination of Matrix'
]

{ #category : #benchmarks }
MBGaussianElimination >> gaussianElimination [


	<benchmark: 'PMLinearEquationSystem'>
	<setup: #setupPMLinearEquationSystem>

	1 timesRepeat: [ a1 solution ].
]
