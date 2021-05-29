Class {
	#name : #MBTraceTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBTraceTest >> testRunAll [
	(BenchmarkSuite class: MBTrace )run.
]
