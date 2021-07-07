"
I benchmark the operation, ""Finding trace of a matrix"".
https://en.wikipedia.org/wiki/Trace_(linear_algebra)

Public API and Key Messages

To run the benchmarks
- `MBTrace runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBTrace runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 300 and shows a line chart plot.

Only `PMMatrix` and `PMSymmetricMatrix` support this operation.

"
Class {
	#name : #MBTrace,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBTrace class >> title [


	^ 'Trace of '
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
