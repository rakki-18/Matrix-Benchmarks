Class {
	#name : #CSAIColumnMatrixBenchmarkTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
CSAIColumnMatrixBenchmarkTest >> testRunAll [ 
	(BenchmarkSuite class: CSAISymetricMatrixBenchmark   ) run.
]

{ #category : #tests }
CSAIColumnMatrixBenchmarkTest >> testRunIndividually [
	CSAIColumnMatrixBenchmark selectorsAndMethodsDo:[:selector :method |
		((method pragmaAt: #benchmark) notNil or:[ (method pragmaAt: #benchmark:) notNil ]) ifTrue:[ 
			(BenchmarkSuite class: CSAIColumnMatrixBenchmark  selector: selector) run.
		].
	]

]
