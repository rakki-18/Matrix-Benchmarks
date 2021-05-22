Class {
	#name : #CSArray2DBenchmarkTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
CSArray2DBenchmarkTest >> testRunAll [ 
	(BenchmarkSuite class: CSArray2DBenchmark ) run.
]

{ #category : #tests }
CSArray2DBenchmarkTest >> testRunIndividually [
	CSArray2DBenchmark selectorsAndMethodsDo:[:selector :method |
		((method pragmaAt: #benchmark) notNil or:[ (method pragmaAt: #benchmark:) notNil ]) ifTrue:[ 
			(BenchmarkSuite class: CSArray2DBenchmark  selector: selector) run.
		].
	]

]
