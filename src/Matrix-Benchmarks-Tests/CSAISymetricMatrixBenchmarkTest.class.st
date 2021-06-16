Class {
	#name : #CSAISymetricMatrixBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #tests }
CSAISymetricMatrixBenchmarkTest >> testRunAll [ 
	(BenchmarkSuite class: CSAISymetricMatrixBenchmark   ) run.
]

{ #category : #tests }
CSAISymetricMatrixBenchmarkTest >> testRunIndividually [
	CSAISymetricMatrixBenchmark  selectorsAndMethodsDo:[:selector :method |
		((method pragmaAt: #benchmark) notNil or:[ (method pragmaAt: #benchmark:) notNil ]) ifTrue:[ 
			(BenchmarkSuite class: CSAISymetricMatrixBenchmark   selector: selector) run.
		].
	]

]