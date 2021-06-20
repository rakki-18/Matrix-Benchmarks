Class {
	#name : #MBSVDDecomposition,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBSVDDecomposition class >> title [

	^'SVD Decomposition of Matrix'
]

{ #category : #parameters }
MBSVDDecomposition >> initRepetitions [ 

	^ 1
]

{ #category : #normal }
MBSVDDecomposition >> svdDecomposition [


	<benchmark: 'PMSingularValueDecomposition'>
	<setup: #setupPMMatrix>

	self initRepetitions timesRepeat: [ a1 decomposeSV ].
]
