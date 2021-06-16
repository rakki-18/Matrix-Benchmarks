Class {
	#name : #CSAIColumnMatrixBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #tests }
CSAIColumnMatrixBenchmarkTest >> testRunAll [ 
	(BenchmarkSuite class: CSAIColumnMatrixBenchmark   ) run.
]

{ #category : #tests }
CSAIColumnMatrixBenchmarkTest >> testRunIndividually [
	CSAIColumnMatrixBenchmark selectorsAndMethodsDo:[:selector :method |
		((method pragmaAt: #benchmark) notNil or:[ (method pragmaAt: #benchmark:) notNil ]) ifTrue:[ 
			(BenchmarkSuite class: CSAIColumnMatrixBenchmark  selector: selector) run.
		].
	]

]
