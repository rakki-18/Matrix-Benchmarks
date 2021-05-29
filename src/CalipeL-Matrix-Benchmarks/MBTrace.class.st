Class {
	#name : #MBTrace,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBTrace >> tracePMMatrix [


	<benchmark: 'Trace of a PMMatrix'>
	<setup: #setupPMMatrix>

	10000 timesRepeat: [ a1 tr ].
]
