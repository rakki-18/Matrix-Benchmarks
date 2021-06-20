Class {
	#name : #MBTrace,
	#superclass : #MBSetup,
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

	10000 timesRepeat: [ a1 tr ].
]

{ #category : #symmetric }
MBTrace >> tracePMSymmetricMatrix [


	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	10000 timesRepeat: [ a1 tr ].
]
