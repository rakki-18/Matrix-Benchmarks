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

	self initRepetitions timesRepeat: [ a1 solution ].
]

{ #category : #parameters }
MBGaussianElimination >> initRepetitions [ 

	^ 1
]

{ #category : #parameters }
MBGaussianElimination >> maxMatrixSize [ 

	^ 300.
]
