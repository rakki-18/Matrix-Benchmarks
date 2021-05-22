Class {
	#name : #CSAISymetricMatrixBenchmarkTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
CSAISymetricMatrixBenchmarkTest >> testRunAll [ 
	(BenchmarkSuite class: CSAISymetricMatrixBenchmark   ) run.
]

{ #category : #tests }
CSAISymetricMatrixBenchmarkTest >> testRunIndividually [
	CSPMSymmetricMatrixBenchmark  selectorsAndMethodsDo:[:selector :method |
		((method pragmaAt: #benchmark) notNil or:[ (method pragmaAt: #benchmark:) notNil ]) ifTrue:[ 
			(BenchmarkSuite class: CSPMSymmetricMatrixBenchmark  selector: selector) run.
		].
	]

]
