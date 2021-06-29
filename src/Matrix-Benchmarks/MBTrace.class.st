Class {
	#name : #MBTrace,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBTrace class >> title [


	^ 'Trace of a Matrix'
]

{ #category : #parameters }
MBTrace >> initRepetitions [ 

	^ 10000
]

{ #category : #normal }
MBTrace >> tracePMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	self initRepetitions timesRepeat: [ a1 tr ].
]

{ #category : #symmetric }
MBTrace >> tracePMSymmetricMatrix [


	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	self initRepetitions timesRepeat: [ a1 tr ].
]
