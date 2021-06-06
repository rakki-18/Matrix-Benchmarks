Class {
	#name : #MBTrace,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #accessing }
MBTrace class >> title [


	^ 'Trace of a Matrix'
]

{ #category : #benchmarks }
MBTrace >> tracePMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	10000 timesRepeat: [ a1 tr ].
]

{ #category : #benchmarks }
MBTrace >> tracePMSymmetricMatrix [


	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	10000 timesRepeat: [ a1 tr ].
]
