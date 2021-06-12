Class {
	#name : #CSAIRowMatrixBenchmark,
	#superclass : #CSAbstractMatrixBenchmark,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarking }
CSAIRowMatrixBenchmark >> initialization [

	<benchmark: 'New Matrix initialization'>

	self benchInitialization.
]

{ #category : #benchmarking }
CSAIRowMatrixBenchmark >> matrixClass [

	^ AIRowMatrix 
]
