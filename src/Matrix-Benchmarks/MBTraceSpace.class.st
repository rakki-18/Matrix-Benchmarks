Class {
	#name : #MBTraceSpace,
	#superclass : #MBTrace,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #normal }
MBTraceSpace >> tracePMMatrix [

	<name: 'PMMatrix'>
	self setupPMMatrix.

	^ self bench: [ a1 tr ].
]

{ #category : #normal }
MBTraceSpace >> tracePMSymmetricMatrix [ 

	<name: 'PMSymmetric'>
	self setupPMSymmetricMatrix.

	^ self bench: [ a1 tr ].
]
