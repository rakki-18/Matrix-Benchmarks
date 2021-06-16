Class {
	#name : #CSAISymetricMatrixBenchmark,
	#superclass : #CSAbstractMatrixBenchmark,
	#category : #'Matrix-Benchmarks'
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
