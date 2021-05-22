Class {
	#name : #CSAISymetricMatrixBenchmark,
	#superclass : #Object,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarking }
CSAISymetricMatrixBenchmark >> initialization [

	<benchmark: 'New Matrix initialization'>

	100 timesRepeat:[ AISymetricMatrix  new:500  ].
]
