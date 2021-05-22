Class {
	#name : #CSAIDiagonalMatrixBenchmark,
	#superclass : #Object,
	#instVars : [
		'aArray'
	],
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #setup }
CSAIDiagonalMatrixBenchmark >> VectorSetup [


	aArray := Array new: 500.
	1 to: 500 do: [ :i | aArray at: i put: (10000 random) ].
]

{ #category : #benchmarking }
CSAIDiagonalMatrixBenchmark >> initialization [

	
	<benchmark: 'Diagonal Matrix initialization'>
	<setup: #VectorSetup>

	100 timesRepeat:[  AIDiagonalMatrix withDiagonal: aArray].
]
