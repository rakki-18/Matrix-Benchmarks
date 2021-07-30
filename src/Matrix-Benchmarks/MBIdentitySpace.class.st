Class {
	#name : #MBIdentitySpace,
	#superclass : #MBIdentity,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #benchmarks }
MBIdentitySpace >> identityArray2D [

	<name: 'Array2D'>

	^ self bench:[  Array2D identity: matrixSize  ].
]

{ #category : #benchmarks }
MBIdentitySpace >> identityPMMatrix [

	<name: 'PMMatrix'>

	^ self bench:[  PMMatrix identity: matrixSize  ].
]

{ #category : #benchmarks }
MBIdentitySpace >> identityPMSymmetricMatrix [

	<name: 'PMSymmetric'>

	^ self bench:[  PMSymmetricMatrix identity: matrixSize  ].
]
