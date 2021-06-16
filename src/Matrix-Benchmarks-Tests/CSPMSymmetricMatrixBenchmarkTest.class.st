Class {
	#name : #CSPMSymmetricMatrixBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #tests }
CSPMSymmetricMatrixBenchmarkTest >> testRunAll [ 
	(BenchmarkSuite class: CSPMSymmetricMatrixBenchmark  ) run.
]

{ #category : #tests }
CSPMSymmetricMatrixBenchmarkTest >> testRunIndividually [
	CSPMSymmetricMatrixBenchmark  selectorsAndMethodsDo:[:selector :method |
		((method pragmaAt: #benchmark) notNil or:[ (method pragmaAt: #benchmark:) notNil ]) ifTrue:[ 
			(BenchmarkSuite class: CSPMSymmetricMatrixBenchmark  selector: selector) run.
		].
	]

]
