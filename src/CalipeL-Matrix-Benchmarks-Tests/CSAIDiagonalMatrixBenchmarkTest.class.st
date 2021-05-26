Class {
	#name : #CSAIDiagonalMatrixBenchmarkTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
CSAIDiagonalMatrixBenchmarkTest >> testRunAll [ 
	(BenchmarkSuite class: CSAIDiagonalMatrixBenchmark) run.
]

{ #category : #tests }
CSAIDiagonalMatrixBenchmarkTest >> testRunIndividually [
	CSAIDiagonalMatrixBenchmark  selectorsAndMethodsDo:[:selector :method |
		((method pragmaAt: #benchmark) notNil or:[ (method pragmaAt: #benchmark:) notNil ]) ifTrue:[ 
			(BenchmarkSuite class: CSAIDiagonalMatrixBenchmark  selector: selector) run.
		].
	]

]
