Class {
	#name : #MBLUPDecomposition,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBLUPDecomposition class >> title [

	^'LUP Decomposition of Matrix'
]

{ #category : #parameters }
MBLUPDecomposition >> initRepetitions [ 

	^ 1
]

{ #category : #normal }
MBLUPDecomposition >> lupDecomposition [


	<benchmark: 'PMLUPDecomposition'>
	<setup: #setupPMLUPDecomposition>

	self initRepetitions timesRepeat: [ a1 solve: a2 ].
]
