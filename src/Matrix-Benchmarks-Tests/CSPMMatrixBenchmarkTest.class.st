Class {
	#name : #CSPMMatrixBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #tests }
CSPMMatrixBenchmarkTest >> testRunAll [ 
	(BenchmarkSuite class: CSPMMatrixBenchmark  ) run.
]

{ #category : #tests }
CSPMMatrixBenchmarkTest >> testRunIndividually [
	CSPMMatrixBenchmark  selectorsAndMethodsDo:[:selector :method |
		((method pragmaAt: #benchmark) notNil or:[ (method pragmaAt: #benchmark:) notNil ]) ifTrue:[ 
			(BenchmarkSuite class: CSPMMatrixBenchmark  selector: selector) run.
		].
	]

]
