Class {
	#name : #MBLUPDecomposition,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBLUPDecomposition class >> title [

	^'LUP Decomposition of Matrix'
]

{ #category : #normal }
MBLUPDecomposition >> lupDecomposition [


	<benchmark: 'PMLUPDecomposition'>
	<setup: #setupPMLUPDecomposition>

	1 timesRepeat: [ a1 solve: a2 ].
]
