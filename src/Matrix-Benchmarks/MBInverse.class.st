"
I benchmark the operation, ""Finding the [inverse](https://en.wikipedia.org/wiki/Invertible_matrix) of a matrix"".

Public API and Key Messages

To run the benchmarks
- `MBInverse runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBInverse runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 150 and shows a line chart plot.
- `MBInverse runAllBenchmarksFrom: fromMatrixSize to: toMatrixSize by: aNumber` runs the benchmarks for the set of matrix sizes specified if it is valid.


Only `PMMatrix` and `PMSymmetricMatrix` supports finding inverse of a mtrix.
This operation takes a lot of time and hence big matrix sizes won't be passed by the API.

"
Class {
	#name : #MBInverse,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #accessing }
MBInverse class >> friendlyName [ 


	^ 'Matrix Inverse '
]

{ #category : #accessing }
MBInverse class >> title [


	^ 'Inverse '
]

{ #category : #parameters }
MBInverse >> initRepetitions [ 

	^ 1
]

{ #category : #normal }
MBInverse >> inversePMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupInvertiblePMMatrix>

	self initRepetitions timesRepeat: [ a1 inverse ].
]

{ #category : #symmetric }
MBInverse >> inversePMSymmetricMatrix [


	<benchmark: 'PMSymmetricMatrix'>
	<setup: #setupInvertiblePMSymmetricMatrix>

	self initRepetitions timesRepeat: [ a1 inverse ].
]

{ #category : #parameters }
MBInverse >> maxMatrixSize [ 

	^ 300.
]
