Class {
	#name : #MBSVDDecomposition,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBSVDDecomposition class >> title [

	^'SVD Decomposition of Matrix'
]

{ #category : #benchmarks }
MBSVDDecomposition >> svdDecomposition [


	<benchmark: 'PMSingularValueDecomposition'>
	<setup: #setupPMMatrix>

	1 timesRepeat: [ a1 decomposeSV ].
]
