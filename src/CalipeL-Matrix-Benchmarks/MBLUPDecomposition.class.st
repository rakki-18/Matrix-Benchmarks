Class {
	#name : #MBLUPDecomposition,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #accessing }
MBLUPDecomposition class >> title [

	^'LUP Decomposition of Matrix'
]

{ #category : #benchmarks }
MBLUPDecomposition >> LUPDecomposition [


	<benchmark: 'PMLUPDecomposition'>
	<setup: #setupPMLUPDecomposition>

	1 timesRepeat: [ a1 solve: a2 ].
]