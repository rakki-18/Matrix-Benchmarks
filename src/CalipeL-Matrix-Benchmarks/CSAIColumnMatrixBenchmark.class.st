Class {
	#name : #CSAIColumnMatrixBenchmark,
	#superclass : #Object,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarking }
CSAIColumnMatrixBenchmark >> initialization [

	<benchmark: 'New Matrix initialization'>

	100 timesRepeat:[ AIColumnMatrix  new:500  ].
]
