Class {
	#name : #CSAIDiagonalMatrixBenchmark,
	#superclass : #CSAbstractMatrixBenchmark,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarking }
CSAIDiagonalMatrixBenchmark >> initialization [

	
	<benchmark: 'Diagonal Matrix initialization'>
	<setup: #vectorSetup>

	self initRepetitions  timesRepeat:[  AIDiagonalMatrix withDiagonal: aArray].
]

{ #category : #setup }
CSAIDiagonalMatrixBenchmark >> matrixClass [

	^ AIDiagonalMatrix.
]
