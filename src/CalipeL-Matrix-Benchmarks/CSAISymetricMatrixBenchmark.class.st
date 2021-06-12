Class {
	#name : #CSAISymetricMatrixBenchmark,
	#superclass : #CSAbstractMatrixBenchmark,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarking }
CSAISymetricMatrixBenchmark >> initialization [

	<benchmark: 'New Matrix initialization'>

	self benchInitialization.
]

{ #category : #benchmarking }
CSAISymetricMatrixBenchmark >> matrixClass [

	^ AISymetricMatrix.
]
