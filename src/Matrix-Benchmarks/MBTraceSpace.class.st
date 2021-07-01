Class {
	#name : #MBTraceSpace,
	#superclass : #MBTrace,
	#category : #'Matrix-Benchmarks'
}

{ #category : #normal }
MBTraceSpace >> tracePMMatrix [


	self setupPMMatrix.

	^ self bench: [ a1 tr ].
]

{ #category : #normal }
MBTraceSpace >> tracePMSymmetricMatrix [ 


	self setupPMSymmetricMatrix.

	^ self bench: [ a1 tr ].
]
