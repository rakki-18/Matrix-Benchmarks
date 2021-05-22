Class {
	#name : #CSAIRowMatrixBenchmarkTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
CSAIRowMatrixBenchmarkTest >> testRunAll [ 
	(BenchmarkSuite class: CSAIRowMatrixBenchmark    ) run.
]

{ #category : #tests }
CSAIRowMatrixBenchmarkTest >> testRunIndividually [
	CSAIRowMatrixBenchmark  selectorsAndMethodsDo:[:selector :method |
		((method pragmaAt: #benchmark) notNil or:[ (method pragmaAt: #benchmark:) notNil ]) ifTrue:[ 
			(BenchmarkSuite class: CSAIRowMatrixBenchmark selector: selector) run.
		].
	]

]
