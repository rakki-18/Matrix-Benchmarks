Class {
	#name : #CSAIColumnMatrixBenchmark,
	#superclass : #CSAbstractMatrixBenchmark,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarking }
CSAIColumnMatrixBenchmark >> initialization [

	<benchmark: 'New Matrix initialization'>

	self benchInitialization.
]

{ #category : #benchmarking }
CSAIColumnMatrixBenchmark >> matrixClass [

	^ AIColumnMatrix
]