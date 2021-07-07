"
I benchmark the operation, ""Finding the [Strassen Matrix Multiplication](https://en.wikipedia.org/wiki/Strassen_algorithm) of two matrices"".

Public API and Key Messages

Strassen Multiplication will only work when the matrix size is a power of 2.
To run the benchmarks
- `MBStrassenMultiplication runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger` where `anInteger` must be a power of 2.



"
Class {
	#name : #MBStrassenMultiplication,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBStrassenMultiplication class >> title [


	^ 'Strassen Multiplication '
]

{ #category : #parameters }
MBStrassenMultiplication >> initRepetitions [ 

	^ 1
]

{ #category : #normal }
MBStrassenMultiplication >> strassenPMMatrix [


	<benchmark: 'PMMatrix'>
	<setup: #setupStrassenPMMatrix>

	self initRepetitions timesRepeat: [ a1 strassenProductWithMatrix: a2].
]
