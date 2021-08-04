Class {
	#name : #MBIdentity,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #accessing }
MBIdentity class >> friendlyName [ 


	^ 'Generating an identity matrix'
]

{ #category : #accessing }
MBIdentity class >> title [


	^ 'Generating an identity '
]

{ #category : #normal }
MBIdentity >> identityArray2D [

	
	<benchmark: 'Array2D'>

	self initRepetitions timesRepeat:[  Array2D identity: matrixSize ].
]

{ #category : #normal }
MBIdentity >> identityPMMatrix [

	
	<benchmark: 'PMMatrix'>

	self initRepetitions timesRepeat:[  PMMatrix identity: matrixSize ].
]

{ #category : #symmetric }
MBIdentity >> identityPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>

	self initRepetitions timesRepeat:[  PMSymmetricMatrix  identity: matrixSize ].
]
