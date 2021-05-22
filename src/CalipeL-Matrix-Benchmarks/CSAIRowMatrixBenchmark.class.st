Class {
	#name : #CSAIRowMatrixBenchmark,
	#superclass : #Object,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarking }
CSAIRowMatrixBenchmark >> initialization [

	<benchmark: 'New Matrix initialization'>

	100 timesRepeat:[ AIRowMatrix  new:500  ].
]
